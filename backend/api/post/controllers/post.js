const { sanitizeEntity } = require("strapi-utils");

module.exports = {
  /**
   * Retrieve records.
   *
   * @return {Array}
   */

  async find(ctx) {
    let entities;
    if (ctx.query._q) {
      entities = await strapi.services.post.search(ctx.query);
    } else {
      entities = await strapi.services.post.find(ctx.query);
    }

    return entities.map((entity) =>
      sanitizeEntity(entity, { model: strapi.models.post })
    );
  },
};
