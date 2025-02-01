# Sonic Testnet Deploy Mini App

Мини-приложение для деплоя смарт-контрактов в Sonic Testnet с использованием Hardhat.

## 🚀 Установка

```bash
git clone https://github.com/Cryptocotleta1/Sonic-testnet-deploy-mini-app.git
cd Sonic-testnet-deploy-mini-app
npm install

npx hardhat help                  # Список доступных команд
npx hardhat test                  # Запуск тестов
REPORT_GAS=true npx hardhat test   # Запуск тестов с отчетом о газе
npx hardhat node                  # Локальный узел для тестирования
npx hardhat ignition deploy ./ignition/modules/Lock.js  # Деплой контракта

