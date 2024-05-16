Language: [English](README.md) | [中文](README-Zh_TW.md)

---

# RocDateTime

RocDateTime 是一個 Dart 套件，提供自定義的 DateTime 類別，用於顯示中華民國（ROC）年。這個套件方便開發者在應用程序中輕鬆處理和顯示民國年日期格式。

## 特性

- 繼承自 Dart 的 `DateTime` 類別，並覆蓋年份顯示為民國年。
- 提供從 `DateTime` 轉換到 `RocDateTime` 的方法。
- 支持日期時間的格式化輸出。

## 安裝

在 `pubspec.yaml` 文件中添加以下依賴項：

```yaml
dependencies:
  roc_date_time: ^1.0.0
```

然後運行 `pub get` 獲取依賴。

## 使用示例

```dart
import 'package:roc_date_time/roc_date_time.dart';

void main() {
  // 創建一個當前時間的 RocDateTime 實例
  DateTime now = DateTime.now();
  RocDateTime rocDateTime = RocDateTime.fromDateTime(now);
  print('ROC DateTime: ${rocDateTime.toString()}');

  // 使用 RocDateTime 創建一個特定日期的實例
  RocDateTime specificDate = RocDateTime(110, 5, 16);
  print('Specific ROC DateTime: ${specificDate.toString()}');
}
```

## API

### RocDateTime

#### 屬性

- `int year`: 民國年
- `int month`: 月份（1-12）
- `int day`: 日期（1-31）
- `int hour`: 小時（0-23）
- `int minute`: 分鐘（0-59）
- `int second`: 秒（0-59）
- `int millisecond`: 毫秒（0-999）
- `int microsecond`: 微秒（0-999999）

#### 方法

- `RocDateTime.fromDateTime(DateTime dateTime)`: 從 `DateTime` 創建 `RocDateTime` 實例。
- `RocDateTime(int year, [int month = 1, int day = 1, int hour = 0, int minute = 0, int second = 0, int millisecond = 0, int microsecond = 0])`: 創建指定日期時間的 `RocDateTime` 實例。
- `RocDateTime copyWith({int? year, int? month, int? day, int? hour, int? minute, int? second, int? millisecond, int? microsecond})`: 返回一個新的 `RocDateTime` 實例，並根據提供的值更新屬性。
- `DateTime toDateTime()`: 將 `RocDateTime` 轉換為 `DateTime`。

## 授權條款

本項目採用 MIT 授權條款，詳見 [LICENSE](LICENSE) 文件。