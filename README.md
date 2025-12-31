# flavors_mobile_task

A Flutter project demonstrating **Android product flavors** with **separate entry points and asset bundles** for **development** and **production** builds.

---

## 📌 Overview

This project showcases how to:

- Use Flutter flavors (`development` / `production`)
- Run different `main` files per flavor
- Configure Android Gradle flavors using **Kotlin DSL**
- Separate assets per flavor to control APK size
- Make development builds larger than production builds
- Prevent development assets from leaking into production

---

## 🧩 Flavors

| Flavor | Application ID | App Name |
|------|---------------|----------|
| development | `com.example.flavors_mobile_task.dev` | Flavors development |
| production | `com.example.flavors_mobile_task` | Flavors production |

