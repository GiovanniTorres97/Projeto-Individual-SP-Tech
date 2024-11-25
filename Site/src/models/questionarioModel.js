var database = require("../database/config");

function cadastrar(idUsuario, resposta1, resposta2, resposta3, resposta4, resposta5, resposta6, resposta7, resposta8, resposta9) {
    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function autenticar(): ");
    var instrucaoSql = `
        INSERT into respostas VALUES
        (${idUsuario}, 1, '${resposta1}'),
        (${idUsuario}, 2, '${resposta2}'), 
        (${idUsuario}, 3, '${resposta3}'),
        (${idUsuario}, 4, '${resposta4}'),
        (${idUsuario}, 5, '${resposta5}'), 
        (${idUsuario}, 6, '${resposta6}'),
        (${idUsuario}, 7, '${resposta7}'),
        (${idUsuario}, 8, '${resposta8}'), 
        (${idUsuario}, 9, '${resposta9}');
        
    `;
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

module.exports = {
    cadastrar
};