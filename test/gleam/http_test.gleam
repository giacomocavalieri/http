import gleam/expect
import gleam/http

pub fn parse_method_test() {
  "Connect"
  |> http:parse_method
  |> expect:equal(_, Ok(http:Connect))

  "CONNECT"
  |> http:parse_method
  |> expect:equal(_, Ok(http:Connect))

  "connect"
  |> http:parse_method
  |> expect:equal(_, Ok(http:Connect))

  "Delete"
  |> http:parse_method
  |> expect:equal(_, Ok(http:Delete))

  "DELETE"
  |> http:parse_method
  |> expect:equal(_, Ok(http:Delete))

  "delete"
  |> http:parse_method
  |> expect:equal(_, Ok(http:Delete))

  "Get"
  |> http:parse_method
  |> expect:equal(_, Ok(http:Get))

  "GET"
  |> http:parse_method
  |> expect:equal(_, Ok(http:Get))

  "get"
  |> http:parse_method
  |> expect:equal(_, Ok(http:Get))

  "Head"
  |> http:parse_method
  |> expect:equal(_, Ok(http:Head))

  "HEAD"
  |> http:parse_method
  |> expect:equal(_, Ok(http:Head))

  "head"
  |> http:parse_method
  |> expect:equal(_, Ok(http:Head))

  "Options"
  |> http:parse_method
  |> expect:equal(_, Ok(http:Options))

  "OPTIONS"
  |> http:parse_method
  |> expect:equal(_, Ok(http:Options))

  "options"
  |> http:parse_method
  |> expect:equal(_, Ok(http:Options))

  "Patch"
  |> http:parse_method
  |> expect:equal(_, Ok(http:Patch))

  "PATCH"
  |> http:parse_method
  |> expect:equal(_, Ok(http:Patch))

  "patch"
  |> http:parse_method
  |> expect:equal(_, Ok(http:Patch))

  "Post"
  |> http:parse_method
  |> expect:equal(_, Ok(http:Post))

  "POST"
  |> http:parse_method
  |> expect:equal(_, Ok(http:Post))

  "post"
  |> http:parse_method
  |> expect:equal(_, Ok(http:Post))

  "Put"
  |> http:parse_method
  |> expect:equal(_, Ok(http:Put))

  "PUT"
  |> http:parse_method
  |> expect:equal(_, Ok(http:Put))

  "put"
  |> http:parse_method
  |> expect:equal(_, Ok(http:Put))

  "Trace"
  |> http:parse_method
  |> expect:equal(_, Ok(http:Trace))

  "TRACE"
  |> http:parse_method
  |> expect:equal(_, Ok(http:Trace))

  "trace"
  |> http:parse_method
  |> expect:equal(_, Ok(http:Trace))

  "thingy"
  |> http:parse_method
  |> expect:equal(_, Error(Nil))
}