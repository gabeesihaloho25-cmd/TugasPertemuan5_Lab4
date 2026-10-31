program UrutNilaiUAS;                 

uses crt;                           

var
  nilai: array[1..10] of integer;     // array untuk menyimpan nilai 10 mahasiswa
  n, i, j, temp: integer;             // deklarasi variabel

begin
  clrscr;                            

  write('Masukkan jumlah mahasiswa (1-10): ');
  readln(n);                          // membaca jumlah mahasiswa

  for i := 1 to n do                // perulangan untuk memasukkan nilai
  begin
    write('Masukkan nilai UAS mahasiswa ke-', i, ': ');
    readln(nilai[i]);                 // menyimpan nilai ke dalam array
  end;

  // Proses pengurutan nilai dari terkecil ke terbesar
  for i := 1 to n-1 do              // perulangan pertama untuk menentukan posisi
  begin
    for j := i+1 to n do              // perulangan kedua untuk membandingkan nilai
    begin
      if nilai[i] > nilai[j] then;  // jika nilai pertama lebih besar
      begin
        temp := nilai[i];             // menyimpan nilai pertama sementara
       nilai[i] := nilai[j];       // mengganti nilai pertama dengan nilai kedua
        nilai[j] := temp;             // memindahkan nilai sementara ke posisi kedua
      end;                         // mengakhiri kondisi IF
    end;                              // mengakhiri perulangan kedua
  end;                             // mengakhiri perulangan pertama

  writeln;                            
  writeln('===== HASIL PENGURUTAN NILAI ====='); 

  for i := 1 to n do                  // perulangan untuk menampilkan hasil
  begin
    writeln('Mahasiswa ke-', i, ': ', nilai[i]);   // menampilkan nomor dan nilai mahasiswa
                                        
  end;                                // mengakhiri perulangan output

  readln;                             
end.                                  
