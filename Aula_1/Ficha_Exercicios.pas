Program Pzim ;

var
controladoCicloPrincipal: integer;
controladorCase: integer;
  controladorIfAleneas: char;
  
  
  //Numero_1_var
  numero_1 : integer;
  numero_2 : integer;
  tipo_operacao : char;
  resultado : real;
  
  //Numero_2_var
  valorLido: integer;
  controladorCicloNumeroDois: integer;
  
  //Numero_3_var
  nome : string;
  idade,  totalEstudantes, totalFeminino, totalMaiores_24, controladorCicloNumeroTres : integer;
  sexo : char;
  //Numero_4_var
  matriz: array[1..3, 1..4] of integer;
  linha,coluna: integer;
  SomaPrimeirColuna: integer;
  produtoPenultimaLinha: integer;
  somaElementosMatriz: integer;
  dobroSomaDiagonalPrincipal: integer;
  
  //Numero_5_var
  
  
  
  Begin
    //Limpar Tela "Console"
    clrscr;
    //Mudando cor de fundo
    textcolor(green);
    //Menu console
    
    repeat
      clrscr;
      writeln('-------------------------------------------------');
      writeln('|          Resolucao Da Ficha Exercicios 1       |');
      writeln('|        Ecolha O Numero Que Deseja Acessar      |');
      writeln('-------------------------------------------------');
      writeln;
      writeln;
      textcolor(3);
      writeln('<Press>[1] - Exercicio 1');
      writeln('<Press>[2] - Exercicio 2');
      writeln('<Press>[3] - Exercicio 3');
      writeln('<Press>[4] - Exercicio 4 e alineas');
      writeln('<Press>[5] - Exercicio 5');
      
      read(controladorCase);
        
        
        case controladorCase of
          
          1:	begin
            write('Digite o Primeiro Numero: ');
            readln(numero_1);
            write('Digite o Segundo Numero: ');
            readln(numero_2);
            write('Digite o Tipo de Operacao: ');
            readln(tipo_operacao);
            
            case tipo_operacao of
              '+': begin
                resultado:=numero_1+numero_2;
                writeln(resultado);
              end;
              '-': begin
                resultado:=numero_1-numero_2;
                writeln(resultado);
              end;
              '*': begin
                resultado:=numero_1*numero_2;
                writeln(resultado);
              end;
              '/': begin
                if numero_2 = 0 then
                writeln('Erro!! Divisao por zero :(')
                else
                write(numero_1/numero_2);
                
              end;
            end;
            
          end;
          
          2:  begin
            controladorCicloNumeroDois:= 0;
            write('Digite um valor');
            readln(valorLido);
            repeat
              
              controladorCicloNumeroDois:= controladorCicloNumeroDois+1;
              valorLido:= valorLido +controladorCicloNumeroDois;
              
              
            until(controladorCicloNumeroDois = 100);
            writeln('A soma sera: ', valorLido);
          end;
          
          3:  begin
            totalEstudantes := 0;
            totalFeminino := 0;
            totalMaiores_24 := 0;
            
            repeat
              writeln('Informe os dados do estudante:');
              write('Nome do estudante: ');
              readln(nome);
              write('Idade do estudante: ');
              readln(idade);
              
              write('Sexo do estudante [M - masculino] - [F - feminino]: ');
              readln(sexo);
              
              if sexo = 'F' then
              totalFeminino := totalFeminino + 1;
              
              if idade > 24 then
              totalMaiores_24 := totalMaiores_24 + 1;
              
              totalEstudantes := totalEstudantes + 1;
              
              // Solicita ao usuário se deseja registrar outro estudante
              writeln('Registrar novo estudante? [1 - sim] [2 - nao]');
              readln(controladorCicloNumeroTres);
              
            until (controladorCicloNumeroTres = 2);
            
            writeln('Total de estudantes lidos: ', totalEstudantes);
            writeln('Total de estudantes do sexo feminino: ', totalFeminino);
            writeln('Total de estudantes com mais de 24 anos de idade: ', totalMaiores_24);
            
          end;
          
          4: 	begin
            for linha:=1 to 3 do
            begin
              for coluna:=1 to 4 do
              begin
                write('Degite um numero na posicao [',linha,',',coluna,']:');
                read(matriz[linha,coluna]);
              end;
            end;
            
              //Soma dos elementos da primeira linha
              SomaPrimeirColuna:=0;
              for linha:=1 to 3 do
               SomaPrimeirColuna:=  SomaPrimeirColuna + matriz[linha,1];
              
              writeln('A soma da primeira linha e: ',SomaPrimeirColuna);
								
							//Produto dos elementos da penultima linha
								produtoPenultimaLinha:=1;
							 for coluna:=1 to 4 do
              	 produtoPenultimaLinha:=  produtoPenultimaLinha * matriz[2,coluna];
              
              writeln('Produto dos elementos da penultima linha e: ',produtoPenultimaLinha);
              
              //Soma de todos elementos da matriz
              somaElementosMatriz:=0;
              for linha:=1 to 3 do
								begin
									for coluna:=1 to 4 do
										begin
											somaElementosMatriz:= somaElementosMatriz + matriz[linha,coluna];
										end;
								end; 
								
							writeln('A soma de todos os elementos e igual: ', somaElementosMatriz);
								 
              //Dobro da soma da diagonal principal
              for linha:=1 to 3 do
								begin
									for coluna:=1 to 4 do
										begin
											if linha = coluna then
											  dobroSomaDiagonalPrincipal:= dobroSomaDiagonalPrincipal + matriz[linha,coluna]; 
										end;
								end; 
              
              writeln('O dobro da soma da diagonal principal e: ', dobroSomaDiagonalPrincipal*2);
          end;
          
          5: begin
            
          end;
        end;
        writeln('Quer continuar ou fechar o programa? [1 - sim] [2 - nao]');
        read(controladoCicloPrincipal);
      until(controladoCicloPrincipal = 2);
      
    End.