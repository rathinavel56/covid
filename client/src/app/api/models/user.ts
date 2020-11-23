
import { ServiceResponse } from './service-response';
import { Role } from './role';
import { Attachment } from './attachment';
import { Error } from './error';
import { Address } from './address';
import { UserCategory } from './user-category';
import { Social } from './social';
import { VoteCategory } from './vote_category';
export class User extends ServiceResponse {
    access_token?: string;
    expires_in?: number;
    token_type?: string;
    scope?: string;
    refresh_token?: string;
    id?: number;
    slug?: string;
    username?: string;
    email?: string;
    mobile?: any;
    first_name?: string;
    last_name?: string;
    votes?: number;
    instagram_url?: any;
    tiktok_url?: any;
    youtube_url?: any;
    twitter_url?: any;
    facebook_url?: any;
    is_paypal_connect?: number;
    is_stripe_connect?: number;
    is_subscribed?: boolean;
    subscription_end_date?: string;
    attachment?: Attachment;
    role?: Role;
    address?: Address;
    cart_count?: number;
    category?: UserCategory;
    data?: User;
    error: Error;
    image?: string;
    social?: Social;
    vote_category?: VoteCategory;
    subscribed_data?: any;
    is_active?: boolean;
}