<?php

use PhpOffice\PhpSpreadsheet\Worksheet\AutoFilter\Column\Rule;

include 'vendor/autoload.php';

$connect = new PDO("mysql:host=localhost;dbname=task", "root", "");
$kampanya_tarihi=$_POST['kampanya_tarihi'];
$kampanya_adi=$_POST['kampanya_adi'];
if($_FILES["import_csv"]["name"] != '')
{
 $allowed_extension = array('xls', 'csv', 'xlsx');
 $file_array = explode(".", $_FILES["import_csv"]["name"]);
 $file_extension = end($file_array);

 if(in_array($file_extension, $allowed_extension))
 {
  $file_name = time() . '.' . $file_extension;
  move_uploaded_file($_FILES['import_csv']['tmp_name'], $file_name);
  $file_type = \PhpOffice\PhpSpreadsheet\IOFactory::identify($file_name);
  $reader = \PhpOffice\PhpSpreadsheet\IOFactory::createReader($file_type);

  $spreadsheet = $reader->load($file_name);

  unlink($file_name);

  $data = $spreadsheet->getActiveSheet()->toArray();

    $say=0;
  foreach($data as $row)
  {
   $insert_data = array(
    ':ad'  => $row[0],
    ':soyad'  => $row[1],
    ':eposta'  => replace_tr(strtolower( $row[2])),
    ':calisan_id'  =>($row[3]),
    ':telefon' =>preg_replace('/[^0-9.]/', '', $row[4]), 
    ':puan' => $row[5],
    'kampanya_adi'=>$kampanya_adi,
    'kampanya_tarihi'=>$kampanya_tarihi
  
   );

   $query = "INSERT INTO veriler
   (ad, soyad, eposta, calisan_id, telefon, puan,kampanya_adi, kampanya_tarihi) 
   VALUES (:ad, :soyad, :eposta, :calisan_id, :telefon,:puan, :kampanya_adi, :kampanya_tarihi)
   ";
   $say++;
   if ($say == 1) { continue; }

   @$statement = $connect->prepare($query);
   @$statement->execute($insert_data);
  }
  $message = array('isSuccess'=>true,'message'=>'Dosya Başarıyla Aktarıldı');
 

 }
 else
 {
  $message =  array('isSuccess'=>false,'message'=>'Yalnızca .xls .csv veya .xlsx Formatları Geçerlidir');
 }
}

else
{
 $message =  array('isSuccess'=>false,'message'=>'Dosya Seçiniz');
}
header('Content-type: application/json');
echo json_encode($message) ;

function replace_tr($text) {
  $text = trim($text);
  $search = array('Ç','ç','Ğ','ğ','ı','İ','Ö','ö','Ş','ş','Ü','ü',' ');
  $replace = array('c','c','g','g','i','i','o','o','s','s','u','u','-');
  $new_text = str_replace($search,$replace,$text);
  return $new_text;
}
?>
