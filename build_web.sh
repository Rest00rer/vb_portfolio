#!/bin/bash

# Скрипт для сборки Flutter веб-приложения для GitHub Pages

echo "🔨 Сборка Flutter веб-приложения для GitHub Pages..."

# Очистка предыдущей сборки
echo "🧹 Очистка предыдущей сборки..."
flutter clean

# Получение зависимостей
echo "📦 Получение зависимостей..."
flutter pub get

# Сборка для веб с правильным base-href
echo "🌐 Сборка веб-приложения..."
flutter build web --release --base-href "/vb_portfolio/"

echo "✅ Сборка завершена!"
echo "📁 Файлы находятся в папке: build/web"
echo "🚀 Для деплоя на GitHub Pages используйте GitHub Actions workflow"
