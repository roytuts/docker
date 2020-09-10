const express = require('express')

const router = express.Router()

const controller =   require('../controller/item.controller');

// Retrieve a single item with id
router.get('/:id', controller.findById);

// Retrieve a single item with id
router.post('/name', controller.findByName);

// Retrieve all items
router.get('/', controller.findAll);

// Create a new item
router.post('/', controller.create);

// Update an item
router.put('/', controller.update);

// Delete an item with id
router.delete('/:id', controller.delete);

module.exports = router