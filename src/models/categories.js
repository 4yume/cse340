import db from './db.js'

const getAllCategories = async () => {
    const query = `
    SELECT category_id, name
    FROM public.category
    `;

    const result = await db.query(query);

    return result.rows;
}

const getCategoryById = async (categoryId) => {
    const query = `
    SELECT
        category_id,
        name
    FROM public.category
    WHERE category_id = $1
    `;

    const queryParams = [categoryId];
    const result = await db.query(query, queryParams);

    return result.rows[0];
}

const getCategoriesByProjectId = async (projectId) => {
    const query = `
    SELECT
        c.category_id,
        c.name
    FROM public.category AS c
    JOIN public.project_category AS p
    ON c.category_id = p.category_id
    WHERE p.project_id = $1
    `;

    const queryParams = [projectId];
    const result = await db.query(query, queryParams);

    return result.rows;
}

const getProjectsByCategoryId = async (categoryId) => {
    const query = `
    SELECT
        p.project_id,
        p.title
    FROM public.project AS p
    JOIN public.project_category AS po
    ON p.project_id = po.project_id
    WHERE po.category_id = $1
    `;

    const queryParams = [categoryId];
    const result = await db.query(query, queryParams);

    return result.rows;
}

export { getAllCategories, getCategoryById, getCategoriesByProjectId, getProjectsByCategoryId }