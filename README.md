# Intajiyah

A Flutter/FlutterFlow productivity app with focus sessions, habits, tasks, journaling, and analytics, backed by Firebase.

## Weekly Contributions: 23 Sep – 30 Sep 2026

This section documents what each team member contributed to the FlutterFlow project during this week.

---

### Maher Abbas

**Backend**
- Established the Firebase database and connected it to the project

**Screens built**
- Onboarding: `Intro1`, `Intro2`, `Intro3`
- `LoginScreen` (UI)
- `HomePage`
- `Journal`
- `Library`
- `Focus Session`
- `Habits`
- `Tasks`
- `Settings`
- `Analytics – Monthly Report`
- `Analytics – Statistics`

---

### Hassan

- Implemented the logic for `LoginScreen`
- Added the `Signup` screen together with its full logic

---

### Mishari

- Made the **Display Name** and **Email** fields in Settings dynamic (pulled from the user's account data)
- Created the **Edit Profile** page

---

### Ahmed

- Added the `ForgotMyPassword` screen, which resets the password through a dynamically generated email link
- Added the `ChangePassword` screen

### Abdulmalik

- Added the bottom **navigation bar** (navbar)
- Set up navigation between the app's pages
---

## Summary Table

| Member     | Area of Work                                                                 |
|------------|------------------------------------------------------------------------------|
| Maher      | Firebase setup, onboarding, main app screens, analytics screens              |
| Hassan     | Login logic, Signup screen and logic                                         |
| Mishari    | Dynamic Settings profile data, Edit Profile page                             |
| Ahmed      | Forgot password flow (email reset link), Change Password screen              |
| Abdulmalik | Navbar, page-to-page navigation                                              |

---

## Weekly Contributions: 1 Oct – 8 Oct 2026

This section documents what each team member contributed to the FlutterFlow project during this week.

---

### Maher Abbas

**Screens worked on**
- `Tasks`
- `HomePage`

**Details**
- **Task Management (Core), FR-5:**
  - Built the task features on the Firestore `tasks` collection (`user_id`, `title`, `priority`, `effort_level`, `category`, `status`, `due_date`, `completed_at`).
  - Tasks are grouped on the Tasks page by priority (High Focus, Medium Effort, Low Effort) using the `TaskItemCard` component.
- **Tasks page:**
  - Added the due date to each task card as a gray row at the bottom, with a calendar icon and the formatted date.
  - Made task cards load collapsed by default by setting the `isExpanded` state variable's initial value to false.
  - Adjusted the card layout to match the HomePage task card style.
  - Limited the number of characters allowed in the task title in `AddTaskSheet`, and set long titles to truncate with an ellipsis so they don't overflow the card.
- **HomePage:**
  - Replaced the static "Today's Tasks" card with a dynamic ListView connected to the `tasks` collection.
  - Filtered it to tasks due today using two custom functions, `startOfToday` and `startOfTomorrow`, and limited it to 3 tasks.
  - Bound each card's title and priority label to the task data, with enum values shown as readable labels ("High Focus", "Medium Effort", "Low Effort").
  - Made the colored dot on the right of each task dynamic, with red for High, yellow for Medium and teal for Low priority.
  - Added a custom function, `sortTasksByPriority`, to order the tasks High → Medium → Low.
- **Firestore:**
  - Fixed the "missing or insufficient permissions" error on the Home query by adding the `user_id` filter.
  - Kept the existing subtasks security rule by not deploying the rules update that would have overwritten it.

---

### Hassan

-

---

### Mishari

-

---

### Ahmed

-

---

### Abdulmalik

**Settings**
- Established the **Delete Account** feature from the Settings page

## Summary Table

| Member     | Area of Work                                                                                                   |
|------------|----------------------------------------------------------------------------------------------------------------|
| Maher      | Tasks page (due dates, collapsed cards, title limit), HomePage (dynamic Today's Tasks, priority labels and dot colors, priority sorting) |
| Hassan     |                                                                                                                |
| Mishari    |                                                                                                                |
| Ahmed      |                                                                                                                |
| Abdulmalik | Delete Account feature in Settings                                                                             |
