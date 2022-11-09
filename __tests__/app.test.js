const pool = require('../lib/utils/pool');
const setup = require('../data/setup');
//const  request  = require('express');
const request = require('supertest');
const app = require('../lib/app');

descirbe('book routes', () => {
  beforeEach(() => {
    return setup(pool);
  });

  describe('/books should return a list of books', async () => {
    const res = await request(app).get('books');
    expect(res.body.length).toEqual(1);
    const redbadgeofcourage = res.body.find((char) => char.id === '1');
    expect(redbadgeofcourage).toHaveProperty('title', 'Red Badge of Courage');
    expect(redbadgeofcourage).toHaveProperty('released', 'example 2');
  });

  afterAll(() => {
    pool.end();
  });
});
