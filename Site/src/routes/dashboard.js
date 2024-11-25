var express = require("express");
var router = express.Router();

var dashboardController = require("../controllers/dashboardController");

router.get("/obterGeneroMaisEscutado", function (req, res) {
    dashboardController.obterGeneroMaisEscutado(req, res);
})

router.get("/obterDados/:fkPergunta", function (req, res) {
    dashboardController.obterDados(req, res);
})

module.exports = router;