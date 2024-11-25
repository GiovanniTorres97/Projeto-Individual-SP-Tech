var database = require("../database/config");

function obterGeneroMaisEscutado() {
    var instrucaoSql = `
    select resposta as genero, count(resposta) as qtdEscolhido from respostas
	where fkPergunta = 1
			group by resposta order by count(resposta) desc limit 1;
    `
    return database.executar(instrucaoSql);
}

function obterDados(fkPergunta) {
    var instrucaoSql = `
    select resposta as genero, count(resposta) as qtdEscolhido from respostas
	where fkPergunta = ${fkPergunta}
			group by resposta order by count(resposta) desc;
    `
    return database.executar(instrucaoSql);
}

module.exports = {
    obterGeneroMaisEscutado,
    obterDados
};