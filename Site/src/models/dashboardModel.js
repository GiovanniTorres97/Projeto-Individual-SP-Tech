var database = require("../database/config");

function obterGeneroMaisEscutado() {
    var instrucaoSql = `
    select resposta as genero, count(resposta) as qtdEscolhido from respostas
	where fkPergunta = 1
			group by resposta order by count(resposta) desc limit 1;
    `
    return database.executar(instrucaoSql);
}

module.exports = {
    obterGeneroMaisEscutado
};