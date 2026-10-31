program mengurutkan_nilai_mahasiswa;                 
uses crt;                             
var
  nilai: array[1..10] of integer;     // array untuk menyimpan nilai maks 10 mahasiswa
  n, i, j, temp: integer;             

begin
  clrscr;                             

  write('Masukkan jumlah mahasiswa (1-10): ');
  readln(n);                          // membaca jumlah mahasiswa

  for i := 1 to n do                  // perulangan input nilai
  begin
    write('Masukkan nilai UAS mahasiswa ke-', i, ': ');
    readln(nilai[i]);                // penyimpan nilai ke dalam array
  end;
  // Proses pengurutan dari terkecil ke terbesar
  for i := 1 to n-1 do
  begin
    for j := i+1 to n do
    begin
      if nilai[i] > nilai[j] then    // membandingkan dua nilai
      begin
        temp := nilai[i];            // menyimpan nilai sementara
        nilai[i] := nilai[j];        // menukar posisi nilai
        nilai[j] := temp;            // memindahkan nilai sementara
      end;
    end;
  end;
  writeln;
  writeln('Nilai mahasiswa setelah diurutkan:');
  for i := 1 to n do                 // perulangan menampilkan hasil
  begin
    writeln('Mahasiswa ke-', i, ': ', nilai[i]);
  end;
  readln;                          
end.                               
