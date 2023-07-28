/**
 * Course
 * A Course
 */
declare interface Course {
    id?: string;
    createdAt?: string | null;
    description: string;
    slug: string;
    status: string;
    title: string;
    updatedAt?: string | null;
}
export { Course };
