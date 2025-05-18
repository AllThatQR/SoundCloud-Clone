#!/bin/bash
set -e  # ← exits on first error

cd backend
echo "📦 Running Sequelize migrations..."
npx sequelize-cli db:migrate
npx sequelize-cli db:seed:all

echo "✅ Migrations and seeds completed"
