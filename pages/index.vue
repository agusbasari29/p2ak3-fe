<script setup lang="ts">
const route = useRoute()
import { reactive } from 'vue';

const form = reactive({
  name: '',
  email: '',
  message: ''
});

const submitForm = () => {
  console.log('Form submitted:', form);
  alert('Form submitted!');
  // You can add your form submission logic here
};
</script>

<template>
  <div class="pt-3">
    <div class="flex flex-col grid grid-cols-10 gap-3">
      <div class="col-span-8">
        <span class="text-2xl font-bold">Selamat Datang<br/></span>
      </div>
    </div>
  </div>
  <UBreadcrumb class="p b-5 pt-5" divider=">" :links="[{label: 'Home', to:'/', icon: 'i-heroicons-home-solid'}]" />
    <div class="flex flex-col grid grid-cols-9 gap-3 pt-5 pb-3">
      <div class="col-span-8"> 
      <div class="container">
    <header class="header">
      <h1>Perusahaan Inspeksi K3 Riksa Uji Peralatan</h1>
      <p>Spesialis Inspeksi K3 dan Riksa Uji Peralatan Industri</p>
    </header>

    <section class="intro">
      <h2>Keamanan dan Kepatuhan Adalah Prioritas Kami</h2>
      <p>
        Di <strong>[Nama Perusahaan Anda]</strong>, kami memahami bahwa keselamatan kerja adalah kunci keberhasilan bisnis Anda. Dengan pengalaman bertahun-tahun dalam bidang Kesehatan, Keselamatan, dan Lingkungan Kerja (K3), kami menawarkan layanan inspeksi dan riksa uji peralatan yang komprehensif untuk memastikan operasi Anda berjalan dengan aman dan sesuai dengan peraturan yang berlaku.
      </p>
    </section>

    <section class="services">
      <h2>Layanan Kami</h2>
      <ul>
        <li>
          <h3>Inspeksi K3</h3>
          <p>Pemeriksaan dan pengujian rutin untuk memastikan kepatuhan terhadap standar K3.</p>
          <p>Identifikasi potensi bahaya dan rekomendasi tindakan korektif.</p>
        </li>
        <li>
          <h3>Riksa Uji Peralatan</h3>
          <p>Pengujian peralatan kerja sesuai dengan regulasi nasional dan internasional.</p>
          <p>Sertifikasi peralatan kerja untuk memastikan operasional yang aman dan efisien.</p>
        </li>
        <li>
          <h3>Konsultasi K3</h3>
          <p>Layanan konsultasi untuk membantu perusahaan dalam merancang dan menerapkan sistem manajemen K3.</p>
          <p>Pelatihan K3 untuk meningkatkan kesadaran dan keterampilan keselamatan kerja bagi karyawan Anda.</p>
        </li>
        <li>
          <h3>Audit K3</h3>
          <p>Audit kepatuhan K3 untuk memastikan bahwa semua proses dan peralatan sesuai dengan peraturan dan standar industri.</p>
          <p>Laporan lengkap dengan rekomendasi perbaikan dan peningkatan.</p>
        </li>
      </ul>
    </section>

    <section class="testimonials">
      <h2>Testimoni Klien</h2>
      <blockquote>
        <p>"Kami sangat puas dengan layanan dari [Nama Perusahaan Anda]. Inspeksi mereka sangat mendetail dan membantu kami mematuhi semua regulasi K3."</p>
        <footer>- [Nama Klien]</footer>
      </blockquote>
      <blockquote>
        <p>"Profesionalisme dan keahlian tim [Nama Perusahaan Anda] luar biasa. Kami merasa lebih aman dan percaya diri dalam operasi sehari-hari."</p>
        <footer>- [Nama Klien]</footer>
      </blockquote>
    </section>

    <section class="contact">
      <h2>Hubungi Kami</h2>
      <p>Siap untuk meningkatkan keselamatan kerja dan memastikan kepatuhan peralatan Anda? Hubungi kami hari ini untuk konsultasi gratis!</p>
      <ul>
        <li>Telepon: [Nomor Telepon]</li>
        <li>Email: [Alamat Email]</li>
        <li>Alamat: [Alamat Kantor]</li>
      </ul>
      <form @submit.prevent="submitForm">
        <label for="name">Nama</label>
        <input type="text" id="name" v-model="form.name" required />

        <label for="email">Email</label>
        <input type="email" id="email" v-model="form.email" required />

        <label for="message">Pesan</label>
        <textarea id="message" v-model="form.message" required></textarea>

        <button type="submit">Submit</button>
      </form>
    </section>

    <footer class="footer">
      <p>[Nama Perusahaan Anda] - Mitra Terpercaya untuk Keselamatan dan Kepatuhan Industri</p>
      <nav>
        <a href="[Link Sosial Media]">Sosial Media</a> |
        <a href="[Link Blog/Artikel]">Blog/Artikel</a> |
        <a href="[Link Layanan Lainnya]">Layanan Lainnya</a>
      </nav>
    </footer>
  </div>
    </div>
    </div>
</template>

<style scoped>
  .container {
  font-family: Arial, sans-serif;
  line-height: 1.6;
  padding: 20px;
}
.header, .intro, .services, .testimonials, .contact, .footer {
  margin-bottom: 40px;
}
header h1 {
  font-size: 2.5em;
  margin-bottom: 10px;
}
header p {
  font-size: 1.2em;
}
.services ul {
  list-style: none;
  padding: 0;
}
.services li {
  margin-bottom: 20px;
}
blockquote {
  background: #f9f9f9;
  border-left: 10px solid #ccc;
  margin: 1.5em 10px;
  padding: 0.5em 10px;
}
blockquote p {
  margin: 0;
}
.contact form {
  display: flex;
  flex-direction: column;
}
.contact label {
  margin-top: 10px;
}
.contact input, .contact textarea {
  padding: 10px;
  margin-top: 5px;
  margin-bottom: 20px;
  border: 1px solid #ccc;
  border-radius: 5px;
}
.contact button {
  padding: 10px 20px;
  background-color: #007bff;
  color: white;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}
.contact button:hover {
  background-color: #0056b3;
}
footer {
  text-align: center;
  font-size: 0.9em;
}
footer nav a {
  color: #007bff;
  text-decoration: none;
  margin: 0 5px;
}
footer nav a:hover {
  text-decoration: underline;
}
</style>