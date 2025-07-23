#!/bin/zsh

# --- Начало скрипта ---

echo "Определяем архитектуры..."

ARCH_ARM_STR=$(basename libs-arm64/lib/libpj-*-*.a | cut -d'-' -f2-4)
ARCH_X86_STR=$(basename libs-x86_64/lib/libpj-*-*.a | cut -d'-' -f2-4)

if [ -z "$ARCH_ARM_STR" ] || [ -z "$ARCH_X86_STR" ]; then
    echo "Критическая ошибка: Не удалось определить строки архитектур."
    echo "Убедитесь, что папки libs-arm64/lib и libs-x86_64/lib существуют и содержат библиотеки."
    exit 1
fi

echo "ARM архитектура: $ARCH_ARM_STR"
echo "x86 архитектура: $ARCH_X86_STR"
echo "---"

for lib_path_arm in libs-arm64/lib/*.a; do
    lib_name_arm=$(basename "$lib_path_arm")
    
    lib_name_x86=${lib_name_arm/$ARCH_ARM_STR/$ARCH_X86_STR}
    lib_path_x86="libs-x86_64/lib/$lib_name_x86"
    lib_name_universal=$lib_name_arm
    
    echo "Обрабатываю: $lib_name_universal"

    if [ -f "$lib_path_x86" ]; then
        lipo -create "$lib_path_arm" "$lib_path_x86" \
             -output "libs-universal/lib/$lib_name_universal"
    else
        echo "  --> ПРЕДУПРЕЖДЕНИЕ: Пропущен, т.к. не найден файл для x86: $lib_path_x86"
    fi
done

echo "---"
echo "Готово! Скрипт завершил работу."

# --- Конец скрипта ---
