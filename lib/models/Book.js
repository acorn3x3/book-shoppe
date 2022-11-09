const pool = require('../utils/pool');
const { Author } = reuire('./Author');

class Book {
    id;
    title;
    released;
    author;

}
    constructor(row) {
        this.id = row.id;
        this.first_name = row.first_name;
        this.last_name = row.last_name;
        this.dob = row.dob;
        this.pob = row.pob;
    }
        // static async getAll() {

        