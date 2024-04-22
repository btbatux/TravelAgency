## Description

Bu projenin temel amacı, otel sektöründe faaliyet gösteren işletmenin günlük operasyonlarını daha etkili bir şekilde yönetmesini sağlamak ve müşteri rezervasyon süreçlerini optimize etmektir.
Patika Turizm Acentesi pek çok otel ile anlaşma yaparak otellerin odalarını müşterilere rezerve etmektedir. 
Acente tarafından admin yetkisine sahip ilk kişi yazılımcı tarafından veri tabanına kaydedilecektir. 
Admin yetkisine sahip kişi de sisteme login olup hem admin hem acente çalışanı ekleyebilecektir. 
Acente çalışanları sisteme otel, oda kaydedecek ve müşterilerin taleplerine göre oda araması yapıp rezervasyon işlemi yapacaktır. 
Müşterilerin sisteme erişimi olmadığını, telefon veya yüz yüze destek aldığı bir senaryo düşünün.
Otel Yönetim Sistemi, kullanıcı dostu bir arayüzle acente çalışanlarına esnek fiyatlandırma, detaylı otel ve oda yönetimi, rezervasyon kolaylığı ve otomatik hesaplama gibi özellikler sunarak bu amaçları gerçekleştirmeyi hedeflemektedir.
Acente bu işleri kağıt üzerinde ve manuel olarak yapmanın zaman kaybı olduğunu düşünür, işini kolaylaştıracak bir yazılıma ihtiyaç duymaktadır.
Acentenin yazılımdan beklentisi:
Uygulanacak projede iki farklı kullanıcı tanımlanacaktır. Bunlar admin ve acente çalışanıdır.

## Technologies
- Java 21
- Swing Framework
- PostgreSQL

## Project Overview
The project consists of 3 main parts: **Hotel Management**, **User Management** and **Reservation Management**.

## Features
- **User Management:**
    - Admin can add, delete, update, and filter users based on their roles (admin, staff).

- **Hotel Management:**
    - List hotels with details such as name, address, star rating, and amenities.
    - Add new hotels with information like email, phone, and location.
    - Specify accommodation types (pension types) offered by each hotel.

- **Room Management:**
    - List rooms for each hotel with details like type, features, and availability.
    - Add new rooms, specifying type, features, and stock quantity.

- **Season Management:**
    - Define historical seasons to adjust room pricing based on periods.
    - Specify start and end dates for each season.

- **Pricing Management:**
    - Set dynamic pricing for rooms based on seasons and accommodation types.
    - Differentiate prices for adults and children.

- **Room Search:**
    - Search available rooms based on city, date range, and hotel name.
    - Display relevant information about hotels and rooms that match the search criteria.

- **Reservation Operations:**
    - List existing reservations with details like check-in/out dates, guests, and total price.
    - Add new reservations by selecting available rooms and providing guest information.
    - Delete or update existing reservations.
- **Security:**
    - Users are required to log in to the system with their credentials.
    - 
## Installation

### Admin
- User Management: Admin can list, add, delete, update, and filter users based on their roles (admin, staff).

### Employee (Agency Staff)

- Hotel Management: List and add hotels.
- Room Management: List and add rooms.
- Season Management: List and add seasons.
- Pricing Management.
- Room Search.
- Reservation Operations: List, add, delete, and update reservations.

## Database Design

The system uses a relational database with the following tables:
- `user`: Stores user information.
- `hotel`: Stores hotel information.
- `season`: Stores seasonal information for hotels.
- `pension`: Stores pension types for hotels.
- `room`: Stores room information.
- `reservation`: Stores reservation details.



