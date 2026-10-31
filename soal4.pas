
program NilaiMahasiswaLulus_or_Tidak;                  

uses crt;                                

var
  tugas, kuis, uts, uas: array[1..5] of real; // array untuk menyimpan 4 jenis nilai
  rata: array[1..5] of real;             // array untuk menyimpan nilai rata-rata
  n, i: integer;                         

begin
  clrscr;                           

  write('Masukkan jumlah mahasiswa (1-5): ');
  readln(n);                             // membaca jumlah mahasiswa

  for i := 1 to n do                     // perulangan input nilai mahasiswa
  begin
    writeln;
    writeln('Mahasiswa ke-', i);

    write('Nilai Tugas: ');
    readln(tugas[i]);                    // memasukkan nilai tugas

    write('Nilai Kuis: ');
    readln(kuis[i]);                     // memasukkan nilai kuis

    write('Nilai UTS: ');
    readln(uts[i]);                      // memasukkan nilai UTS

    write('Nilai UAS: ');
    readln(uas[i]);                      // memasukkan nilai UAS

    rata[i] := (tugas[i] + kuis[i] + uts[i] + uas[i]) / 4;
                                            // Menghitung rata-rata
  end;

  writeln;
  writeln('===== HASIL NILAI MAHASISWA =====');

  for i := 1 to n do                     // perulangan menampilkan hasil
  begin
    writeln;
    writeln('Mahasiswa ke-', i);
    writeln('Nilai Tugas : ', tugas[i]:0:2);
    writeln('Nilai Kuis  : ', kuis[i]:0:2);
    writeln('Nilai UTS   : ', uts[i]:0:2);
    writeln('Nilai UAS   : ', uas[i]:0:2);
    writeln('Rata-rata   : ', rata[i]:0:2);

    if rata[i] >= 70 then                // memeriksa apakah rata-rata >= 70
      writeln('Keterangan  : LULUS')     //menampilkan keterangan LULUS jika lulus
    else
      writeln('Keterangan  : TIDAK LULUS'); //menampilkan keterangan TIDAK LULUS jika tidak lulus
  end;

  readln;                                
end.                                    
