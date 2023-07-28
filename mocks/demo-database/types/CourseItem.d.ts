/**
 * CourseItem
 * A CourseItem
 */
declare interface CourseItem {
    id?: string;
    courseId: string;
    createdAt?: string | null;
    description: string;
    slug: string;
    status: string;
    title: string;
    unitPrice: number;
    updatedAt?: string | null;
}
export { CourseItem };
