<div align="center">
  <h1 align="center">
    <picture>
      <source media="(prefers-color-scheme: dark)" srcset="static/assets/images/teable-vertical-dark.png">
      <img alt="teable logo" height="150" src="static/assets/images/teable-vertical-light.png">
    </picture>
  </h1>
  <h3 align="center"><strong>Manage your team wisely </strong></h3>
  <p><strong>Wise</strong> is a cloud-based project management designed to help teams of all sizes plan, track, and collaborate on projects and tasks efficiently. It provides a highly customizable and intuitive interface that allows users to manage their workflows, automate repetitive tasks, and gain visibility into the progress of their work. </p>
</div>

## Quick Guide

1. Looking for a quick experience? Select a scenario from the [template center](https://template.teable.io) and click "Use this template".
2. Seeking high performance? Try the [1 million rows demo](https://app.teable.io/share/shrVgdLiOvNQABtW0yX/view) to feel the speed of Teable.
3. Want to learn to use it quickly? Click on this [tutorial](https://help.teable.io/quick-start/build-a-simple-base)
4. Interested in deploying it yourself? Click [Deploy on Railway](https://railway.app/template/wada5e?referralCode=rE4BjB)

#### 📊 Spreadsheet-like Interface

All you want is here

- Batch Cell Editing
- Formula Support
- Sorting and Filtering Tasks
- Aggregation Function 
- Data Formatting
- Grouping
- Freeze Columns
- Import/Export Project Tasks
- Undo/Redo
- User Management

#### 🗂️ Multiple Views

Visualize and interact with data in various ways best suited for their specific tasks.

- Grid View: The default view of the table, which displays data in a spreadsheet-like format.
- Form View: Input data in a form format, which is useful for collecting data.
- Kanban View: Displays data in a Kanban board, which is a visual representation of data in columns and cards.
- Calendar View: Displays data in a calendar format, which is useful for tracking dates and events. (coming soon)
- Gallery View: Displays data in a gallery format, which is useful for displaying images and other media. (coming soon)
- Gantt View: Displays data in a Gantt chart, which is useful for tracking project schedules. (coming soon)
- Timeline View: Displays data in a timeline format, which is useful for tracking events over time. (coming soon)

#### 🚀 Super Fast

Amazing response speed and data capacity

- Millions of data are easily processed, and there is no pressure to filter and sort
- Automatic database indexing for maximum speed
- Supports batch data operations at one time

#### 👨‍💻 Full-featured SQL Support

Seamless integration with the software you are familiar with

- BI tools like Metabase PowerBi...
- No-code tools like Appsmith...
- Direct retrieve data with native SQL

#### 🔒 Privacy-First

You own your data, in spite of the cloud

- Bring your own database (coming soon)

#### ⚡️ Real-time Collaboration

Designed for teams

- No need to refresh the page, data is updated in real-time
- Seamlessly integrate collaboration member invitation and management
- Perfect permission management mechanism, from table to column level


#### 🗄️ Support for Databases

Choose the SQL database you like

- Sqlite, PostgreSQL

---

# Structure

[![Open in Gitpod](https://img.shields.io/badge/Open%20In-Gitpod.io-%231966D2?style=for-the-badge&logo=gitpod)](https://gitpod.io/#https://github.com/teableio/teable)

```
.
├── apps
│   ├── nextjs-app          (front-end, include a nextjs app)
│   └── nestjs-backend      (backend, include a nestjs app)
└── packages
    ├── common-i18n         (locales)
    ├── core                (share code and interface)
    ├── sdk                 (sdk for extensions)
    ├── db-main-prisma      (schema, migrations, prisma client)
    ├── eslint-config-bases (to shared eslint configs)
    └── ui-lib              (ui component)
```

## Deploy

### Deploy With Docker

```sh
cd dockers/examples/standalone/
docker-compose up -d
```

for more details, see [install teable](https://help.teable.io/deployment/docker-compose)

## Development

#### 1. Initialize

```sh
# Enabling the Help Management Package Manager
corepack enable

# Install project dependencies
pnpm install
```

#### 2. Select Database

we currently support `sqlite` and `postgres`, you can switch between them by running the following command

```sh
make switch-db-mode
```

#### 3. Custom Environment Variables（Optional）

```sh
cd apps/nextjs-app
copy .env.development .env.development.local
```

#### 4. Run Dev Server

you just need to start backend, it will start next server for frontend automatically, file change will be auto reload

```sh
cd apps/nestjs-backend
pnpm dev
```
