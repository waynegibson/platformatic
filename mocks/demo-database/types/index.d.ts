import { Category } from './Category'
import { Course } from './Course'
import { CourseCategory } from './CourseCategory'
import { CourseItem } from './CourseItem'
  
  interface EntityTypes  {
    Category:Category
    Course:Course
    CourseCategory:CourseCategory
    CourseItem:CourseItem
  }
  
  export { EntityTypes ,Category,Course,CourseCategory,CourseItem }