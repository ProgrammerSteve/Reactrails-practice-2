import * as React from "react";
import * as ReactDOM from "react-dom";
import Header from './header';

interface AppProps {
  arg: string;
}

const App = ({ arg }: AppProps) => {
  return(
<div>
  {`Hello, ${arg}!`}
  <Header/>
</div>
  ) ;
};

document.addEventListener("DOMContentLoaded", () => {
  const rootEl = document.getElementById("root");
  ReactDOM.render(<App arg="Rails 7 with ESBuild" />, rootEl);
});