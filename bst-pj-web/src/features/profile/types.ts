import { UserProfile } from "@/proto/bst/v1/user";
import {
  GetMyProfileResponse,
  UpdateResponse,
} from "@/proto/bst/v1/my_profile_service";

export interface ProfileState {
  profile: UserProfile | null;
  email: string | null;
  loading: boolean;
  error: string | null;
}

export interface ProfileUpdateField {
  field:
    | "name"
    | "introduction"
    | "icon"
    | "genres"
    | "artists"
    | "parts"
    | "area";
  value: string | number | number[];
}
