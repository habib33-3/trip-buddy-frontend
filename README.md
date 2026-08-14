# Trip Buddy 🌍✈️

> A modern travel planning and visualization platform built with React and TypeScript.

**Trip Buddy** is a full-stack travel companion that helps users plan trips, organize itineraries, visualize routes, and explore their travel history through interactive maps, timelines, statistics, and a 3D globe.

This repository contains the **frontend application**, built with React, TypeScript, Vite, Tailwind CSS, Zustand, and TanStack Query. The application follows a feature-oriented architecture designed for maintainability, scalability, and a responsive user experience.

## 🔗 Links

* **Live Application:** https://trip-buddy-frontend-seven.vercel.app/
* **Backend API:** https://trip-buddy-backend-g4cb.onrender.com/
* **Backend Repository:** https://github.com/habib33-3/trip-buddy-backend

---

## ✨ Features

* 🧳 **Trip Management** — Create, organize, and manage travel plans.
* 📍 **Interactive Itineraries** — Manage destinations and activities within trips.
* 🗺️ **Route Visualization** — Visualize destinations and travel routes on interactive maps.
* 🌍 **3D Globe** — Explore visited countries through an interactive globe.
* 📊 **Travel Analytics** — Track destinations, countries visited, and travel statistics.
* 📅 **Travel Timeline** — Explore past and upcoming journeys chronologically.
* 🔐 **Authentication** — Secure authentication flows and protected application routes.
* 📱 **Responsive UI** — Optimized for mobile, tablet, and desktop experiences.
* 🧩 **Reusable Components** — Shared UI components and reusable application patterns.
* ⚡ **Server-State Caching** — Efficient API data fetching and caching with TanStack Query.

---

## 🛠️ Tech Stack

| Category          | Technology                |
| ----------------- | ------------------------- |
| Framework         | React                     |
| Language          | TypeScript                |
| Build Tool        | Vite                      |
| Styling           | Tailwind CSS              |
| Routing           | React Router              |
| Client State      | Zustand                   |
| Server State      | TanStack Query            |
| HTTP Client       | Axios                     |
| Maps              | Interactive Map Libraries |
| Globe             | 3D Globe Visualization    |
| Package Manager   | pnpm                      |
| Containerization  | Docker                    |
| Orchestration     | Docker Compose            |
| Production Server | Nginx                     |
| Deployment        | Vercel                    |

---

## 🏗️ Architecture

The frontend uses a **feature-oriented architecture** that keeps domain-specific functionality organized while maintaining a shared foundation for reusable UI and application utilities.

```text
src/
├── assets/           # Static assets
├── components/       # Shared UI components
├── features/         # Feature-specific modules
├── hooks/            # Reusable React hooks
├── layouts/          # Application layouts
├── pages/            # Route-level pages
├── routes/           # Routing configuration
├── services/         # API and external service integrations
├── stores/           # Global client-side state
├── types/            # Shared TypeScript types
├── utils/            # Utility functions
├── App.tsx
└── main.tsx
```

### State Management Strategy

The application separates **server state** from **client state** rather than managing everything through a single global store.

#### TanStack Query

Used for server-side data such as:

* Trips
* Itineraries
* Destinations
* User data
* API requests
* Caching and synchronization
* Loading and error states

#### Zustand

Used for lightweight client-side state that needs to be shared across components.

This separation keeps API data management independent from UI and application state.

### Feature-Oriented Design

Domain-specific functionality is grouped inside `features/`, making it easier to:

* Add new functionality
* Maintain existing features
* Locate related code
* Reduce coupling
* Scale the application as features grow

### Reusable UI

Common interface elements are extracted into shared components to reduce duplication and maintain consistent behavior and styling throughout the application.

---

## 🔄 Application Architecture

The frontend communicates with the Trip Buddy backend through a REST API.

```text
┌─────────────────────────┐
│       React App         │
│                         │
│  Pages / Features       │
│          │              │
│          ▼              │
│     TanStack Query      │
│          │              │
│          ▼              │
│        Axios            │
└──────────┬──────────────┘
           │
           │ HTTPS / REST
           ▼
┌─────────────────────────┐
│     Trip Buddy API      │
│                         │
│ Express + TypeScript    │
│          │              │
│          ▼              │
│        Prisma           │
└──────────┬──────────────┘
           │
           ▼
┌─────────────────────────┐
│      PostgreSQL         │
└─────────────────────────┘
```

---

# 🚀 Getting Started

## Prerequisites

Make sure you have:

* **Node.js 18+**
* **pnpm 8+**
* **Docker**
* **Docker Compose v2+** *(optional for containerized development)*

---

## ⚡ Local Development

### 1. Clone the Repository

```bash
git clone https://github.com/habib33-3/trip-buddy.git
cd trip-buddy
```

### 2. Install Dependencies

```bash
pnpm install
```

### 3. Configure Environment Variables

Copy the example environment file:

```bash
cp .env.example .env
```

Configure the API URL:

```env
VITE_API_URL=http://localhost:5000
```

### 4. Start the Development Server

```bash
pnpm dev
```

The application will be available at:

```text
http://localhost:5173
```

---

# 🏭 Production Build

Build the application:

```bash
pnpm build
```

Preview the production build locally:

```bash
pnpm preview
```

The production build is generated in the `dist/` directory.

---

# 🐳 Docker

Docker provides reproducible development and production environments.

## Development

Start the development environment:

```bash
pnpm docker:dev
```

The application will be available at:

```text
http://localhost:5173
```

Rebuild the development image:

```bash
pnpm docker:dev:rebuild
```

## Production

Start the production environment:

```bash
pnpm docker:prod
```

The production application will be available at:

```text
http://localhost:8080
```

The production container uses **Nginx** to serve the optimized Vite build.

## Stop Containers

```bash
pnpm docker:down
```

### Docker Commands

| Command                   | Purpose                       |
| ------------------------- | ----------------------------- |
| `pnpm docker:dev`         | Start development environment |
| `pnpm docker:dev:rebuild` | Rebuild development image     |
| `pnpm docker:prod`        | Start production environment  |
| `pnpm docker:down`        | Stop Docker containers        |

---

# 🔐 Environment Configuration

The frontend uses Vite environment variables.

Create `.env` from the provided template:

```bash
cp .env.example .env
```

Example:

```env
VITE_API_URL=http://localhost:5000
```

For production, configure the API URL to point to the deployed backend:

```env
VITE_API_URL=https://trip-buddy-backend-g4cb.onrender.com
```

> Only variables intended to be exposed to browser code should use the `VITE_` prefix. Never put private credentials, authentication secrets, database credentials, or server-side API keys in frontend environment variables.

---

# 🧪 Development Commands

| Command                   | Description                          |
| ------------------------- | ------------------------------------ |
| `pnpm dev`                | Start Vite development server        |
| `pnpm build`              | Create production build              |
| `pnpm preview`            | Preview production build             |
| `pnpm lint`               | Run ESLint                           |
| `pnpm docker:dev`         | Start Docker development environment |
| `pnpm docker:dev:rebuild` | Rebuild development Docker image     |
| `pnpm docker:prod`        | Start Docker production environment  |
| `pnpm docker:down`        | Stop Docker containers               |

---

# 🎯 What This Project Demonstrates

Trip Buddy demonstrates practical frontend engineering skills including:

* Type-safe React development
* Component-driven UI architecture
* Feature-oriented project organization
* Server-state and client-state separation
* REST API integration
* API caching and synchronization
* Protected application routes
* Interactive map visualizations
* 3D globe visualization
* Responsive UI development
* Reusable component design
* Dockerized development and production environments
* Nginx-based production serving
* Vite production builds
* Frontend/backend integration

---

# 🗺️ Roadmap

* [ ] Trip sharing
* [ ] Collaborative trip planning
* [ ] Image sharing
* [ ] User profiles
* [ ] Advanced travel analytics
* [ ] User feedback and reporting
* [ ] Mobile application

---

# 📄 License

This project is licensed under the **MIT License**.

See the [`LICENSE`](LICENSE) file for details.
