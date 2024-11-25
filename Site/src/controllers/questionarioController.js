var questionarioModel = require("../models/questionarioModel");

function cadastrar(req, res) {
    // Crie uma variável que vá recuperar os valores do arquivo cadastro.html
    var resposta1 = req.body.resposta1;
    var resposta2 = req.body.resposta2;
    var resposta3 = req.body.resposta3;
    var resposta4 = req.body.resposta4;
    var resposta5 = req.body.resposta5;
    var resposta6 = req.body.resposta6;
    var resposta7 = req.body.resposta7;
    var resposta8 = req.body.resposta8;
    var resposta9 = req.body.resposta9;
    var idUsuario = req.body.idUsuario;

        // Passe os valores como parâmetro e vá para o arquivo usuarioModel.js
        questionarioModel.cadastrar(idUsuario, resposta1, resposta2, resposta3, resposta4, resposta5, resposta6, resposta7, resposta8, resposta9)
            .then(
                function (resultado) {
                    res.json(resultado);
                }
            ).catch(
                function (erro) {
                    console.log(erro);
                    console.log(
                        "\nHouve um erro ao realizar o cadastro! Erro: ",
                        erro.sqlMessage
                    );
                    res.status(500).json(erro.sqlMessage);
                }
            );
    }


module.exports = {
    cadastrar
}