<?php
include 'koneksi.php';

$nama = $_POST['nama'];
$jenis_kelamin = $_POST['jenis_kelamin'];
$input_gejala = $_POST['gejala'];

$cf_total = [];
$penyakit_list = [];

$p_result = mysqli_query($conn, "SELECT * FROM penyakit");
while ($row = mysqli_fetch_assoc($p_result)) {
    $penyakit_list[$row['kode']] = $row['nama_penyakit'];
}

foreach ($penyakit_list as $kode_penyakit => $nama_penyakit) {
    $cf_combined = 0;
    $first = true;

    foreach ($input_gejala as $kode_gejala => $cf_user) {
        $query = "SELECT * FROM basis_pengetahuan WHERE kode_penyakit = '$kode_penyakit' AND kode_gejala = '$kode_gejala'";
        $result = mysqli_query($conn, $query);
        $data = mysqli_fetch_assoc($result);

        if ($data) {
            $mb = $data['mb'];
            $md = $data['md'];
            $cf_pakar = $mb - $md;
            $cf = $cf_pakar * $cf_user;

            if ($first) {
                $cf_combined = $cf;
                $first = false;
            } else {
                $cf_combined = $cf_combined + $cf * (1 - $cf_combined);
            }
        }
    }

    $cf_total[$kode_penyakit] = $cf_combined;
}

arsort($cf_total);
$kode_tertinggi = key($cf_total);
$cf_tertinggi = round($cf_total[$kode_tertinggi], 3);
$hasil_diagnosis = $penyakit_list[$kode_tertinggi];

mysqli_query($conn, "INSERT INTO riwayat (nama, jenis_kelamin, hasil_diagnosis, nilai_cf)
                     VALUES ('$nama', '$jenis_kelamin', '$hasil_diagnosis', $cf_tertinggi)");
?>

<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <title>Hasil Diagnosis</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light p-5">
  <div class="container bg-white shadow p-5 rounded">
    <h2 class="text-center text-success mb-4">🩺 Hasil Diagnosis Diabetes</h2>
    <p><strong>Nama:</strong> <?= htmlspecialchars($nama) ?></p>
    <p><strong>Jenis Kelamin:</strong> <?= htmlspecialchars($jenis_kelamin) ?></p>
    <p><strong>Diagnosis:</strong> <span class="text-danger fw-bold"><?= $hasil_diagnosis ?></span></p>
    <p><strong>Nilai Kepastian (CF):</strong> <?= $cf_tertinggi * 100 ?>%</p>
    <a href="index.html" class="btn btn-outline-primary mt-4">Kembali ke Halaman Awal</a>
  </div>
</body>
</html>
</body>
</html>