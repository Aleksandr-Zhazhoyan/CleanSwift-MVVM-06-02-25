☑️ Приложение для Составления списка дел

Это приложение для составления списка дел, которое позволяет пользователям добавлять, помечать и удалять элементы.

Демонстрация экранов

![Simulator Screenshot - iPhone 16 Pro - 2025-04-07 at 18 08 49](https://github.com/user-attachments/assets/b0df313f-5220-4449-a667-bfe6887144ba)
![Simulator Screenshot - iPhone 16 Pro - 2025-04-07 at 18 08 57](https://github.com/user-attachments/assets/d0a4c796-78a3-4501-abb1-e818de91fb06)
![Simulator Screenshot - iPhone 16 Pro - 2025-04-07 at 18 09 29](https://github.com/user-attachments/assets/a42a57e6-7d05-4f12-b17a-3795edca4f90)
![Simulator Screenshot - iPhone 16 Pro - 2025-04-07 at 18 09 51](https://github.com/user-attachments/assets/ec4255f9-b907-4fb6-9c74-35c50da05e71)

🏗 Архитектура

Проект построен с использованием архитектуры MVVM + SwiftUI:

Модель: содержит бизнес-логику и модели данных. Здесь происходит сохранение данных в UserDefaults.

ViewModel: обрабатывает бизнес-логику и связывает данные из модели с отображением, используя ObservableObject и @Published свойства.

View: отображает пользовательский интерфейс и связывается с ViewModel с помощью SwiftUI и @StateObject.

🛠 Использованные технологии

SwiftUI для построения пользовательского интерфейса.

MVVM архитектура для четкого разделения ответственности.

UserDefaults для кэширования данных.
