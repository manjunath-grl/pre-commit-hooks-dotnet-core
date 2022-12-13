#!/bin/sh
exec dotnet test "BankNUnitTests.csproj" --filter "Category!=Integration"

if [ $? -ne 0 ]; then
echo "Tests must pass before commit!"
exit 1
fi