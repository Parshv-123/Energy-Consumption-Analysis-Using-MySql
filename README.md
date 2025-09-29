# 🌍 Energy Consumption Analysis  

## 👨‍💻 Author: **Parshv Saitwal**  

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-blue?logo=linkedin&style=for-the-badge)](https://www.linkedin.com/in/parshv-saitwal/) 
[![GitHub](https://img.shields.io/badge/GitHub-Profile-black?logo=github&style=for-the-badge)](https://github.com/Parshv-123)  

---

## 📌 Overview  
An SQL-based analysis of global **energy consumption, production, GDP, population, and emissions**.  
It uncovers insights on top emitters, economic growth, production vs. consumption trends, and the role of renewable energy in sustainability.  

---

## 🖼️ ER Diagram  

<p align="center">
  <img src="assets/er-diagram.png" alt="ER Diagram" width="650"/>
</p>

> ⚠️ **Note:** Make sure the image file (`er-diagram.png`) is uploaded to your repo inside an `assets/` folder.  
> If your image is in the root directory, just change the path to:  
> ```markdown
> <img src="er-diagram.png" alt="ER Diagram" width="650"/>
> ```

---

## 🗂️ Database Design  
- **Country** – master table with unique country codes.  
- **Population** – yearly population data per country.  
- **GDP** – yearly GDP values.  
- **Production** – energy production by type and year.  
- **Consumption** – energy consumption by type and year.  
- **Emissions** – energy type, emissions, and per-capita values.  

🔗 The `Country` table connects all datasets.  
📊 One-to-many relationships exist between `Country` and other tables.  

---

## ⚡ Key SQL Queries & Insights  

### 1️⃣ Total Emissions by Country (Latest Year)  
- 🌏 China, USA, and India are the **top emitters**.  
- 🎯 Focus areas for reducing global emissions.  

### 2️⃣ Top 5 Countries by GDP (Latest Year)  
- 📈 Highlights the **world’s largest economies**.  
- 🏆 Useful for comparing economic vs. environmental impact.  

### 3️⃣ Production vs. Consumption (Country & Year)  
- 🇺🇸 USA, 🇨🇳 China → **surplus/exporters**.  
- 🇮🇳 India, 🇯🇵 Japan → **import dependency**.  

### 4️⃣ Energy Types & Emissions Contribution  
- ⛽ **Coal & Oil** dominate emissions.  
- 🌱 Renewables contribute **minimal emissions** → sustainability advantage.  

### 5️⃣ Trends Over Time  
- 📊 **Emissions**: Rising with GDP & population.  
- 💰 **GDP**: Steady growth in developed nations, rapid in emerging ones.  
- 👥 **Population**: Directly tied to higher emissions.  

---

## 📈 Conclusion  
- 🌍 Energy demand rises with **population & GDP growth**.  
- ⚠️ Fossil fuels dominate, keeping **emissions high**.  
- 🇨🇳🇺🇸🇮🇳 China, USA, India = **largest contributors**.  
- ✅ Some nations show **efficiency improvements**.  
- 🔑 Future depends on **clean energy & strong policies**.  

---

## 🌱 Recommendations for Sustainability  
✔ Switch to **renewables** (solar, wind, hydro)  
✔ Boost **energy efficiency** in industry & transport  
✔ Target **top emitters** for maximum impact  
✔ Improve **carbon efficiency** (more GDP per unit of emission)  
✔ Cut **per-capita emissions** in energy-heavy economies  
✔ Adopt strong **climate policies** (carbon tax, subsidies, green tech)  

---

## 🛠️ Tech Stack  
- 🗄️ **SQL (MySQL)** – Data storage & analysis  
- 📊 **ERD** – Database schema visualization  
- 📑 **PDF Report & Presentation** – Documentation  

---

## 🌐 Connect with Me  

💼 **LinkedIn**  
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-blue?logo=linkedin&style=for-the-badge)](https://www.linkedin.com/in/parshv-saitwal/)  

💻 **GitHub**  
[![GitHub](https://img.shields.io/badge/GitHub-Profile-black?logo=github&style=for-the-badge)](https://github.com/Parshv-123)  

---
