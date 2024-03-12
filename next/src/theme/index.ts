"use client";
import {Inter} from "next/font/google";
import {createTheme} from "@mui/material/styles";

const inter = Inter({subsets: ["latin"]});


export const theme = createTheme({
  palette: {
    mode: "light",
  },
  typography: {
    fontFamily: inter.style.fontFamily,
  },
  components: {},
});