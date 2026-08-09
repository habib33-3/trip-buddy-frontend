# Trip Buddy 🌍✈️

> A modern travel planning and visualization platform built with React and TypeScript.

Trip Buddy is a full-featured travel companion designed to help users **plan trips, organize itineraries, visualize routes, and explore their travel history** through interactive maps, timelines, statistics, and a 3D globe.

The frontend focuses on a responsive, interactive experience with a modular architecture designed for scalability and maintainability.

---

## ✨ Highlights

* 🧳 **Trip Management** — Create and organize travel plans and itineraries.
* 📍 **Interactive Itineraries** — Manage destinations and activities within trips.
* 🗺️ **Route Visualization** — Visualize destinations and travel routes on interactive maps.
* 🌍 **3D Globe** — Explore visited countries through an interactive globe.
* 📊 **Travel Analytics** — Track destinations, countries visited, and travel distance.
* 📅 **Travel Timeline** — Explore past and upcoming journeys.
* 🔐 **Authentication** — Protected routes and authentication flows.
* 📱 **Responsive UI** — Optimized for mobile, tablet, and desktop.
* 🧩 **Reusable Architecture** — Feature-oriented components and shared UI patterns.

---

## 🛠️ Tech Stack

| Area              | Technology                |
| ----------------- | ------------------------- |
| Framework         | React                     |
| Language          | TypeScript                |
| Build Tool        | Vite                      |
| Styling           | Tailwind CSS              |
| Routing           | React Router              |
| State Management  | Zustand                   |
| Server State      | TanStack Query            |
| HTTP Client       | Axios                     |
| Maps              | Interactive Map Libraries |
| Globe             | 3D Globe Visualization    |
| Package Manager   | PNPM                      |
| Containerization  | Docker & Docker Compose   |
| Production Server | Nginx                     |

---

## 🏗️ Architecture

The frontend follows a **feature-oriented architecture** to keep application logic modular and easier to scale.

```text
src/
├── assets/          # Static assets
├── components/      # Shared UI components
├── features/        # Feature-specific modules
├── hooks/           # Reusable React hooks
├── layouts/         # Application layouts
├── pages/           # Route-level pages
├── routes/          # Routing configuration
├── services/        # API and external services
├── stores/          # Global client state
├── types/           # Shared TypeScript types
├── utils/            # Utility functions
├── App.tsx
└── main.tsx
```

### Key Architectural Decisions

**TanStack Query** handles server state, caching, synchronization, and API request lifecycle management.

**Zustand** is used for lightweight client-side state where global state is required.

**Feature-based organization** keeps domain-specific logic together instead of creating a large collection of unrelated global modules.

**Reusable components** reduce duplication and provide a consistent UI across the application.

---

## 🚀 Getting Started

### Prerequisites

* Node.js 18+
* PNPM 8+
* Docker & Docker Compose v2+ *(for containerized development)*

### Local Development

```bash
git clone https://github.com/habib33-3/trip-buddy.git
cd trip-buddy

pnpm install
cp .env.example .env

pnpm dev
```

Open:

```text
http://localhost:5173
```

### Production Build

```bash
pnpm build
pnpm preview
```

---

## 🐳 Docker

Docker Compose provides reproducible development and production environments.

### Development

```bash
pnpm docker:dev
```

Frontend:

```text
http://localhost:5173
```

Rebuild the development image:

```bash
pnpm docker:dev:rebuild
```

### Production

```bash
pnpm docker:prod
```

Frontend:

```text
http://localhost:8080
```

### Stop Containers

```bash
pnpm docker:down
```

| Command                   | Purpose                       |
| ------------------------- | ----------------------------- |
| `pnpm docker:dev`         | Start development environment |
| `pnpm docker:dev:rebuild` | Rebuild development image     |
| `pnpm docker:prod`        | Run production build          |
| `pnpm docker:down`        | Stop containers               |

---

## 🔐 Environment Configuration

Create `.env` from `.env.example`.

Example:

```env
VITE_API_URL=http://localhost:5000
```

Only variables intended for client-side use should use the `VITE_` prefix.

> Never expose private credentials, API secrets, or server-side configuration through Vite environment variables.

---

## 🎯 What This Project Demonstrates

Trip Buddy demonstrates practical experience building a modern frontend application with:

* Type-safe React development
* Component-driven UI architecture
* Feature-based project organization
* Client and server state separation
* API integration and caching
* Protected application routes
* Interactive map and visualization interfaces
* Responsive design
* Dockerized development and production environments
* Production-oriented Vite builds

---

## 🗺️ Roadmap

* [ ] Trip sharing
* [ ] Collaborative trip planning
* [ ] Image sharing
* [ ] User profiles
* [ ] Advanced travel analytics
* [ ] User feedback and reporting
* [ ] Mobile application

---

## 📄 License

MIT License — see [`LICENSE`](LICENSE).