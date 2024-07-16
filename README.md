# ruby-email-send

This sample will show you to easily send your email with the Nylas Ruby SDK.

You can follow along step-by-step in our blog post ["How to Read Email Inbox Data with the Nylas Ruby SDK"](https://www.nylas.com/blog/how-to-read-email-inbox-data-with-nylas-ruby-sdk/).

## Setup

### System dependencies

- Ruby v3.x

### Gather environment variables

You'll need the following values:

```text
NYLAS_API_KEY=
NYLAS_API_URI=
NYLAS_GRANT_ID=
RECIPIENT_EMAIL=
```

Add the above values to a new `.env` file:

```bash
$ touch .env # Then add your env variables
```

### Install dependencies

```bash
$ gem install nylas
$ gem install dotenv
```

## Usage

Run the script using the `ruby` command:

```bash
$ ruby SendEmail.rb
```

When your message is successfully sent, you'll get the following output in your terminal:

```bash
Message "With Love, from Nylas" was sent with ID 111111111111111111
```

## Learn more

Visit our [Nylas Ruby SDK documentation](https://developer.nylas.com/docs/developer-tools/sdk/ruby-sdk/) to learn more.
