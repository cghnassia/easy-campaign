# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :easy_campaign,
  ecto_repos: [EasyCampaign.Repo]

# Configures the endpoint
config :easy_campaign, EasyCampaignWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "wW88k9pipAVabr2phtQphsS+MIvRNcMw6BFZx8c0p8fsQXtJh812bTK0lUiEFuaZ",
  render_errors: [view: EasyCampaignWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: EasyCampaign.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# %% Coherence Configuration %%   Don't remove this line
config :coherence,
  user_schema: EasyCampaign.Coherence.User,
  repo: EasyCampaign.Repo,
  module: EasyCampaign,
  web_module: EasyCampaignWeb,
  router: EasyCampaignWeb.Router,
  messages_backend: EasyCampaignWeb.Coherence.Messages,
  logged_out_url: "/",
  opts: [:authenticatable]
# %% End Coherence Configuration %%

# %% Coherence Configuration %%   Don't remove this line
config :coherence,
  user_schema: EasyCampaign.Coherence.User,
  repo: EasyCampaign.Repo,
  module: EasyCampaign,
  web_module: EasyCampaignWeb,
  router: EasyCampaignWeb.Router,
  messages_backend: EasyCampaignWeb.Coherence.Messages,
  logged_out_url: "/",
  email_from_name: "Your Name",
  email_from_email: "yourname@example.com",
  opts: [:authenticatable, :recoverable, :lockable, :trackable, :unlockable_with_token, :registerable]

config :coherence, EasyCampaignWeb.Coherence.Mailer,
  adapter: Swoosh.Adapters.Sendgrid,
  api_key: "your api key here"
# %% End Coherence Configuration %%

# %% Coherence Configuration %%   Don't remove this line
config :coherence,
  user_schema: EasyCampaign.Coherence.User,
  repo: EasyCampaign.Repo,
  module: EasyCampaign,
  web_module: EasyCampaignWeb,
  router: EasyCampaignWeb.Router,
  messages_backend: EasyCampaignWeb.Coherence.Messages,
  logged_out_url: "/",
  email_from_name: "Your Name",
  email_from_email: "yourname@example.com",
  opts: [:authenticatable, :recoverable, :lockable, :trackable, :unlockable_with_token, :registerable]

config :coherence, EasyCampaignWeb.Coherence.Mailer,
  adapter: Swoosh.Adapters.Sendgrid,
  api_key: "your api key here"
# %% End Coherence Configuration %%

# %% Coherence Configuration %%   Don't remove this line
config :coherence,
  user_schema: EasyCampaign.Coherence.User,
  repo: EasyCampaign.Repo,
  module: EasyCampaign,
  web_module: EasyCampaignWeb,
  router: EasyCampaignWeb.Router,
  messages_backend: EasyCampaignWeb.Coherence.Messages,
  logged_out_url: "/",
  email_from_name: "Your Name",
  email_from_email: "yourname@example.com",
  opts: [:authenticatable, :recoverable, :lockable, :trackable, :unlockable_with_token, :registerable]

config :coherence, EasyCampaignWeb.Coherence.Mailer,
  adapter: Swoosh.Adapters.Sendgrid,
  api_key: "your api key here"
# %% End Coherence Configuration %%

# %% Coherence Configuration %%   Don't remove this line
config :coherence,
  user_schema: EasyCampaign.Coherence.User,
  repo: EasyCampaign.Repo,
  module: EasyCampaign,
  web_module: EasyCampaignWeb,
  router: EasyCampaignWeb.Router,
  messages_backend: EasyCampaignWeb.Coherence.Messages,
  logged_out_url: "/",
  email_from_name: "Your Name",
  email_from_email: "yourname@example.com",
  opts: [:authenticatable, :recoverable, :lockable, :trackable, :unlockable_with_token, :confirmable, :registerable]

config :coherence, EasyCampaignWeb.Coherence.Mailer,
  adapter: Swoosh.Adapters.Sendgrid,
  api_key: "your api key here"
# %% End Coherence Configuration %%
