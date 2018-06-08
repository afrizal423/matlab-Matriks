clc;
clear ;
disp('==========================================================');
disp('                          MENU');
disp('==========================================================');
disp('1. Hitung Eigen Matriks');
disp('2. Hitung dotproduct, crossproduct, determinan Matriks');
disp('==========================================================');
pilih = input('masukkan angka pada menu: ');
switch pilih
    case 1
        disp('Hitung Eigen Matriks');
        c = input('masukkan orde matriks: ');
        A = zeros(c,c);
        for i=1:c
            for j=1:c
                str=['masukkan element in baris ke-' num2str(i) ', kolom ke- ' num2str(j) ':'];
                A(i,j)=input(str);
            end
        end
        %A=[1 -2;1 4];
        clc;
        disp('Matriks A =');
        disp(A);
        disp('nilai determinan matriks A=');
        disp(det(A));
        dA=det(A);
        [ba,ka]=size(A);
        syms L;
        for j=1:ka
            for i=1:ba
            C=A-L*eye(ba);
            end
        end
        disp(C);
        disp('polinomial karakteristik matriks A=');
        disp(det(C));
        disp('nilai eigen matriks A=');
        disp(eig(A));
        pause;
    case 2
        for x=1:2
            if x==2
                c = 1;
                B = zeros(c,c);
                for i=1:c
                    for j=1:3
                        str=['masukkan element matriks B baris ke-' num2str(i) ', kolom ke- ' num2str(j) ':'];
                        B(i,j)=input(str);
                    end
                end
            else
                c = 1;
            A = zeros(c,c);
            for i=1:c
                for j=1:3
                    str=['masukkan element matriks A baris ke-' num2str(i) ', kolom ke- ' num2str(j) ':'];
                    A(i,j)=input(str);
                end
            end
            end
        end
        clc;
        disp('Matriks A =');
        disp(A);
        disp('Matriks B =');
        disp(B);
        disp('nilai DotProduct matriks A=');
        disp(dot(A,B));
        disp('nilai CrosProduct matriks A=');
        disp(cross(A,B));
        pause;
        return;
otherwise
disp('Pilihan Anda tidak ada …');
pause;
end;