# ruby-email-send

This sample will show you to easily send an email with the Nylas Ruby SDK.

You can follow along step-by-step in our blog post ["How to Send Emails with the Nylas Ruby SDK"](https://www.nylas.com/blog/how-to-send-emails-with-the-nylas-ruby-sdk/).

## Setup

### System dependencies

- Ruby v3.x

### Gather environment variables

You'll need the following values:

```text
ACCESS_TOKEN =
CLIENT_ID =
CLIENT_SECRET =
RECIPIENT_ADDRESS =
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

```text
Message "With Love, from Nylas" was sent with ID 111111111111111111
```

## Learn more

Visit our [Nylas Ruby SDK documentation](https://developer.nylas.com/docs/developer-tools/sdk/ruby-sdk/) to learn more.
