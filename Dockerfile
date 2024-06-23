# Gunakan image Node.js versi LTS sebagai base image
FROM node:18

# Buat direktori kerja untuk aplikasi Anda
WORKDIR /usr/src/app

# Salin file package.json dan package-lock.json ke direktori kerja
COPY package*.json ./

# Instal dependensi aplikasi
RUN npm install

# Salin sisa kode aplikasi ke dalam direktori kerja
COPY . .

# Ekspose port yang digunakan oleh aplikasi Anda
EXPOSE 8080

# Perintah untuk menjalankan aplikasi
CMD ["node", "index.js"]
