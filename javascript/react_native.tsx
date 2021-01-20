// Component雛形：React Native

import React from "react";
import { SafeAreaView, StyleSheet } from "react-native";

type Props = {};

export const MyComponent: React.FC<Props> = ({}: Props) => {
  return(
	<SafeAreaView style={styles.container}>
	</SafeAreaView>
  )
};

const styles = StyleSheet.create({
  container:{}
})
