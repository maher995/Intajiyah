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
---
 
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
 
**Add Task Sheet (AI task categorization)** *(implemented by Maher Abbas on Hassan's behalf)*
- Added AI-powered auto-fill to the `AddTaskSheet`: after the user types a task title, the **priority**, **effort level** and **category** dropdowns are filled in automatically.
- Created a Firebase Cloud Function, `categorizeTask`, that sends the task title to the Google Gemini API and returns the three values as structured JSON.
- Stored the Gemini API key in Firebase Secret Manager, so the key is never placed inside the app or the repository.
- Restricted the AI output to the same values used by the app's dropdowns (`highFocus`, `mediumEffort`, `lowEffort`; `low`, `medium`, `high`; `work`, `study`, `personal`, `health`), so the selected options always match.
- Connected the function to the title field in FlutterFlow with an action flow that calls `categorizeTask` and then sets each dropdown from the response. The user can still change the values manually.
---
 
### Mishari
 
**Task completion tracking**
- Worked on the task completion tracking page
---
 
### Ahmed
 
**Tasks (voice input)**
- Established voice input on the Tasks screen, so the name of a task can be added by speaking instead of typing.
---
 
### Abdulmalik
 
**Settings**
- Established the **Delete Account** feature from the Settings page
---
 
## Summary Table
 
| Member     | Area of Work                                                                                                   |
|------------|----------------------------------------------------------------------------------------------------------------|
| Maher      | Tasks page (due dates, collapsed cards, title limit), HomePage (dynamic Today's Tasks, priority labels and dot colors, priority sorting) |
| Hassan     | AI task categorization in AddTaskSheet (Gemini via Firebase Cloud Function), implemented by Maher on Hassan's behalf |
| Mishari    | Task completion tracking page                                                                                  |
| Ahmed      | Voice input for adding a task name on the Tasks screen                                                         |
| Abdulmalik | Delete Account feature in Settings                                                                             |
 
---
 
## Weekly Contributions: 9 Oct – 15 Oct 2026
 
This section documents what each team member contributed to the FlutterFlow project during this week.
 
---
 
 
### Hassan
 
**Mood tracking**
- Built the mood tracking feature in FlutterFlow (`MoodTracking` page):
  - Mood selector with emoji options for the user's current feeling ("How are you feeling today?")
  - Optional note field and a **Save Mood** button to record an entry
  - **Mood History** list showing each saved entry's mood and note
  - Line chart visualizing mood over time
---
 
### Mishari
 
---
 
### Ahmed
 
**Energy level**
- Established the energy level presentation and entry
---
 
### Abdulmalik
 
---
 
## Summary Table
 
| Member     | Area of Work                                                                                                   |
|------------|----------------------------------------------------------------------------------------------------------------|
| Hassan     | Mood tracking feature (mood selection, notes, history list and chart)                                          |
| Mishari    |                                                                                                                |
| Ahmed      | Energy level presentation and entry                                                                            |
| Abdulmalik |                                                                                                                |
 
---
 
## Weekly Contributions: 16 Oct – 22 Oct 2026
 
This section documents what each team member contributed to the FlutterFlow project during this week.
 
---
 
### Maher Abbas
 
**Screens worked on**
- `Library`
**Details**
- **Educational Resources Library, FR-20:**
  - Built the resource library screen, where users can browse educational resources.
  - [Data source: e.g. created a Firestore `resources` collection with fields such as `title`, `description`, `category`, `url`]
  - [Display: e.g. connected the screen to the collection with a ListView, with one card per resource showing the title, description and category]
  - [Interaction: e.g. tapping a resource opens its link or detail page]
- **Data Synchronization, FR-22 (supervision):**
  - Supervised Mishari's data synchronization work and guided the task steps in FlutterFlow.
---
 
### Hassan
 
**Streak**
 
---
 
### Mishari
 
**Data Synchronization, FR-22 (shared with Maher, supervised by Maher Abbas)**
- Limited the sync to the `tasks` and `users` collections.
- Added `updated_at`, `updated_by_device` and `version` fields to both collections, and set `version = 1` on existing documents.
- Filled the three fields on every save (`version` is 1 on create, old version + 1 on update).
- Added a `loadedVersion` check before saving a task, so an outdated save is blocked and shows "This task was changed on another device."
---
 
### Ahmed
 
---
 
### Abdulmalik
 
 
---
 
## Summary Table
 
| Member     | Area of Work                                                                                      |
|------------|---------------------------------------------------------------------------------------------------|
| Maher      | Educational Resources Library (FR-20), supervision of Data Synchronization (FR-22)                |
| Hassan     | Streak                                                                                            |
| Mishari    | Data Synchronization (FR-22): sync fields and version-based conflict check on `tasks` and `users`|
| Ahmed      |                                                                                                   |
| Abdulmalik |                                                                                                   |
 
---
 
## Weekly Contributions: 23 Oct – 29 Oct 2026
 
This section documents what each team member contributed to the FlutterFlow project during this week.
 
---
 
### Maher Abbas
 
**Screens worked on**
- `Journal`
- `journalArchive` (new)
- `MobileNamedEditprofilePage` (Edit Profile)
**Details**
- **Journaling System, FR-17:**
  - **Journal entry card:**
    - Replaced the static prompt chips with a single-selection `ChoiceChips` widget, stacked vertically, with the prompts "What drained your energy today?", "What boosted your productivity?", "What are you grateful for today?", "What did you learn today?" and "Other".
    - The question shown above the entry field changes with the selected chip.
    - Set a hint text on the entry field ("Start writing or use voice input..."), limited the field to 8 lines with the text scrolling beyond that, and added a character limit with a counter.
  - **Voice journaling:**
    - Connected the mic icon to a Firebase Cloud Function, `transcribeAudio`, which sends the recording to the Google Gemini API and returns the transcript in the original language.
    - The Gemini API key is stored in Firebase Secret Manager, so it is never placed inside the app or the repository.
    - The mic action flow records audio, converts it with the custom action `prepareAudioForTranscription`, calls the function and writes the transcript into the entry field.
    - The mic icon switches to a stop icon while recording, using the `isRecording` page state, and an alert dialog is shown if the transcription fails.
  - **Firebase persistence:**
    - The **Save Entry** button stores the journal entry in the Firestore `journal_entries` collection.
  - **Recent Entries:**
    - Replaced the static cards with a dynamic ListView connected to `journal_entries`, filtered to the signed-in user, sorted from newest to oldest and limited to 3 entries.
    - Added a "No entries yet." message that shows only when the user has no entries.
  - **Full archive:**
    - Added a clickable chevron next to the "Recent Entries" title that opens the new `journalArchive` page.
    - `journalArchive` lists all of the user's entries from newest to oldest, and each card expands to fit long entries.
- **Edit Profile page (additions to Mishari's page):**
  - Made the camera icon upload a profile picture to Firebase Storage from the gallery, and show the uploaded picture in the avatar instead of the initial.
  - Applied a CORS configuration to the Firebase Storage bucket so uploaded images load in FlutterFlow Test Mode on Chrome.
  - Limited the **Daily focus time** and **Tasks per day** counters so they cannot go below zero.
  - Made the **Save Change** button store the profile picture, daily focus time, tasks per day, peak energy time and Pomodoro length on the user's Firestore document.
---
 
### Hassan
 
---
 
### Mishari
 
---
 
### Ahmed
 
---
 
### Abdulmalik
 
---
 
## Summary Table
 
| Member     | Area of Work                                                                                                   |
|------------|----------------------------------------------------------------------------------------------------------------|
| Maher      | Journaling System (FR-17): prompt chips, voice journaling with Gemini transcription, saving to Firebase, Recent Entries (max 3) and full archive page; Edit Profile additions (profile picture upload, counter limits, saving profile settings) |
| Hassan     |                                                                                                                |
| Mishari    |                                                                                                                |
| Ahmed      |                                                                                                                |
| Abdulmalik |                                                                                                                |
