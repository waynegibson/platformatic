/// <reference types="@platformatic/db" />
import { EntityHooks } from '@platformatic/sql-mapper'
import { EntityTypes, Category,Course,CourseCategory,CourseItem } from './types'

declare module 'fastify' {
  interface FastifyInstance {
    getSchema<T extends 'Category' | 'Course' | 'CourseCategory' | 'CourseItem'>(schemaId: T): {
      '$id': string,
      title: string,
      description: string,
      type: string,
      properties: {
        [x in keyof EntityTypes[T]]: { type: string, nullable?: boolean }
      },
      required: string[]
    };
  }
}

declare module '@platformatic/sql-mapper' {
  interface Entities {
    category: Entity<Category>,
    course: Entity<Course>,
    courseCategory: Entity<CourseCategory>,
    courseItem: Entity<CourseItem>,
  }
}

declare module '@platformatic/types' {
  interface PlatformaticApp {
    addEntityHooks(entityName: 'category', hooks: EntityHooks<Category>): any
    addEntityHooks(entityName: 'course', hooks: EntityHooks<Course>): any
    addEntityHooks(entityName: 'courseCategory', hooks: EntityHooks<CourseCategory>): any
    addEntityHooks(entityName: 'courseItem', hooks: EntityHooks<CourseItem>): any
  }
}
