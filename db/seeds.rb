Recipe.create!([
       {
           name: "Estrogonofe de carne",
           stuff: "1 kg de carne,3 cebolas médias, sal e pimenta-do-reino a gosto, 2 latas de creme de leite, 2 colheres (sopa) de ketchup",
           calories: 110,
           kind: "Carnes",
           prepare_mode: "Em uma panela, adicione o óleo, a carne, a cebola, os tomates, o caldo de carne. Acrescente o ketchup e o champignon. Desligue o fogo e acrescente o creme de leite sem soro. Coloque em uma forma refratária e decore com tempero e batata palha. ",
           portion: "5",
           duration: "2016-05-06 00:40:00",
           cost:50.00,
           poster: "estrogonofe-de-carne.jpg"
       },
       {
           name: "Filé de Frango a parmegiana",
           stuff: "1/2 kg de filé de frango, 2 ovos batidos com 1 pitada de sal, 2 xícaras (chá) de farinha de rosca,1 caixinha de molho de tomate pronto, mussarela ",
           calories: 160,
           kind: "Aves",
           prepare_mode: "Tempere os filés de frango com o alho, suco de limão, ervas finas e sal a gosto. Passe nos ovos batidos e na farinha de rosca. Frite em óleo. Coloque os filés em um refratário. Cubra com a mussarela. Regue com o molho e leve ao forno para derreter a mussarela. Retire e sirva ",
           portion: "8",
           duration: "2016-05-06 0:35:00",
           cost:40.00,
           poster: "file-frango-parmegiana.jpeg"
       },
       {
           name: "Salmão ao forno",
           stuff: "Sal marinho,Pimenta moída na hora, Azeite extra virgem, 2 filés de salmão 1.1kg com pele, sem escamas e espinhas, 2 limões",
           calories: 100,
           kind: "Peixes",
           prepare_mode: "Retire as espinhas do filé, passe o sal grosso e as ervas. Regue com o azeite e deixe temperando na geladeira por 1 h. Leve ao forno sem cobrir, de 180° a 200°, por no máximo 30 minutos, para não ressecar. Sirva com arroz de brócolis ou com cenourinha picada e cozida, refogada na manteiga",
           portion: "4",
           duration: "2016-05-06 0:50:00",
           cost:60.00,
           poster: "salmao-forno.jpeg"
       },
       {
           name: "Salada Light",
           stuff: "alface, agrião, brócolis, um mix de folhas",
           calories: 90,
           kind: "Saladas",
           prepare_mode: "Misture todas as folhas em uma tigela, tempere e sirva.",
           portion: "4",
           duration: "2016-05-06 0:10:00",
           cost:15.00,
           poster: "salada-light.jpeg"
       },
       {
           name: "Fettuccine",
           stuff: "250g de Fettuccine, 70g bacon, 2 caixas de creme de leite, 3 colheres (sopa) de queijo ralado de saquinho (parmesão), 2 dentes de alho, 1 colher (de sopa) de manteiga/margarina, sal a gosto.",
           calories: 280,
           kind: "Massas",
           prepare_mode: "Coloque o macarrão para cozinhar em água salgada, mas não deixe que fique muito mole (pois vai terminar de cozinhar no molho). Enquanto o macarrão cozinha frite o bacon (ou o que desejar) e reserve, na mesma panela adicione manteiga e refogue rapidamente o alho triturado, junte o creme de leite e misture em fogo baixo até que comece a querer levantar fervura. Adicione o queijo ralado, misture rapidamente para derreter um pouco o queijo. Adicione o fettuccine e o bacon e misture bem.",
           portion: "4",
           duration: "2016-05-06 0:13:00",
           cost:50.00,
           poster: ""
       },
   ])

receita = Recipe.find_by(name: 'Estrogonofe de carne')
receita.comments.create!(name: "Paulo Xavier", rating: 5, comment: "Delicioso")
receita.comments.create!(name: "Joana Santana", rating: 4, comment: "Muito bom.")
receita.comments.create!(name: "Augusto Barros", rating: 4, comment: "Gostoso")

receita = Recipe.find_by(name: 'Salmão ao forno')
receita.comments.create!(name: "Marta Freitas", rating: 5, comment: "O melhor que já comi.")