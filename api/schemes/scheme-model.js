// scheme-model

const db = require("../../data/db-config.js");

module.exports = {

    find() {
        return db('schemes')
    },
    
    findById(id) {
        return db('schemes').where({ id }).first();
    },

    findSteps(id) {
        return db('steps').where({ scheme_id: id })
    },

    add(user) {
        return db('schemes').insert(user, 'id')
    },
    
    update(changes, id) {
        return db('schemes').where({id}).update(changes)
    },

    remove(id) {
        return db('schemes').where({id}).del()
    },  
    
    
  }
