import { gql } from "apollo-boost";

export const getTasksQuery = gql`{
  tasks {
  id
  title
  }
  }`;

export const getProjectsQuery = gql`
{
  projects {
    id
    title
    }
  }
`;