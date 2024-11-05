#!/usr/bin/env python3
"""
Module that changes all topics of a school document based on the name
"""
import pymongo


def update_topics(mongo_collection, name, topics):
    """
    Function that changes all topics of a school document based on the name

    Args:
        mongo_collection: a pymongo collection object
        name: name of the school
        topics: list of topics approached in the school
    """
    mongo_collection.update_many({"name": name}, {"$set": {"topics": topics}})
