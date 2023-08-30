# Шеринг GPU в Kubernetes
Репозиторий содержит исходники, которые используются в [статье](https://habr.com/ru/companies/selectel/articles/756934/).

Цель данного репозитория состоит в том, чтобы дать примеры использования MIG и Timeslicing в Kubernetes.

Далее идет используемых в статье манифестов, рассортированных по директориям.

## GPU-operator
Директория содержит файл values.yml, который можно использовать при установке чарта [gpu-operator](https://github.com/NVIDIA/gpu-operator).

## Monitoring
Директория содержит манифест для установки pod-monitor. Также в install.sh можно найти инструкцию, как установить prometheus operator.

## Pod-sharing-example
Директория содержит манифест для установки примера с triton-server.
Также манифест HPA, который позволяет настроить горизонтальное масштабирование (см prometheus-adapter).

## Prometheus-adapter
Директория содержит манифесты для установки и настройки prometheus-adapter.

## Timeslicing
Директория содержит манифесты для демонстрации примера с timeslicing.
Также содержит пример использования MIG в сочетании с Timeslicing.
