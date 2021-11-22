1. Processo de leitura inicial e periódico.
Os dados serão puxados periodicamente  (https://api.originsro.org/api/v1/market/list)
Será sempre construída tabela (banco de dados 1, que será apagado e reconstruído para cada ciclo) com todas as informações
Estas informações serão ordenadas por itens, com sub ordenamento por preços 
Serão exportadas as linhas de cada item com melhores preços (e com todas as demais respectivas informações, como owner, mapa, x , y , etc) para uma tabela FIXA (banco de dados 2)


2. Confecção do banco e dados fixo
Nesta tabela FIXA, constarão itens (referenciados pelo item ID), com as respectivas informações:
      a. Série histórica dos melhores preços para cada dia de leitura, em colunas no formato "Price dia xx/xx/xx"
      b. Informações do preço mais barato relacionadas a última leitura: Onde eu consigo comprar esse item, pelo melhor preço, HOJE?
     
3. Em posso desta tabela FIXA, posso realizar tratamento estatístico dos dados, como foco no último dado apresentado.
      a. Selecionar uma linha pelo 'item_id' x 'melhor preço dia xx/xx/xxxx'
        a1. 30 últimos valores (análise mensal)
        a2. 7 últimos valores (análise semanal)
        
      b. Realizar método de transposição de matriz 
         Meu resultado será uma matriz de 30x2 - mensal ou 7x2 - semanal
         
      c. Posso realizar ordenamento por 'melhor preço do dia xx/xx/xxxx" -------------------------> Informação útil ao cliente: Em qual colocação está o preço de hoje?
                                                                                                    ex: Preço 4/30 nos últimos 30 dias
                                                                                                        Preço 1/7 nos útimos 7 dias (mais barato da semana)
 4. Desafio futuro: ANÁLISE ESTATÍSTICA
    Devolver ao cliente afirmações probabilísticas do comportamento de preço aos próximos dias
    Necessidade: precisamos ler muitos dados antes.
      
     


