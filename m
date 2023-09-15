Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 912E07A258F
	for <lists.bridge@lfdr.de>; Fri, 15 Sep 2023 20:23:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1E34640123;
	Fri, 15 Sep 2023 18:23:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1E34640123
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=h03w8upG
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NWNLGhjWOU6A; Fri, 15 Sep 2023 18:23:39 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id BADA24031D;
	Fri, 15 Sep 2023 18:23:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BADA24031D
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7158FC0DD3;
	Fri, 15 Sep 2023 18:23:38 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BB76EC0032
 for <bridge@lists.linux-foundation.org>; Fri, 15 Sep 2023 18:23:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 890424031D
 for <bridge@lists.linux-foundation.org>; Fri, 15 Sep 2023 18:23:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 890424031D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FO9bN4VuR_aS for <bridge@lists.linux-foundation.org>;
 Fri, 15 Sep 2023 18:23:36 +0000 (UTC)
Received: from mail-io1-xd2c.google.com (mail-io1-xd2c.google.com
 [IPv6:2607:f8b0:4864:20::d2c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E4FFF40123
 for <bridge@lists.linux-foundation.org>; Fri, 15 Sep 2023 18:23:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E4FFF40123
Received: by mail-io1-xd2c.google.com with SMTP id
 ca18e2360f4ac-794d98181f0so79998539f.2
 for <bridge@lists.linux-foundation.org>; Fri, 15 Sep 2023 11:23:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1694802215; x=1695407015;
 darn=lists.linux-foundation.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=qYxJ9BLaAiW6l+EYIbRNs2EfTz/cHO+AS5Sh/AKxz44=;
 b=h03w8upGyTvh9i6IluLqySFlgoxsCEun3+L7Y2cjRHeG8s8DgdXGV5FB0spIcdUtX6
 WAVhofjzKgqixcG8s8ZAUHGqKpJsW3kPsi9skI1FrXsTIlfhRzl5k6bps+07ySKMq6vW
 xxmc+aAHc5BHrCU5kyrr6OEtl8ja4R1FocyOnYfJV1RlneiOBuG2BJSIoVWPO275zLiB
 w1y8p3YF1f21yEbsyogVuoI6tRhrXJzFbRUszis81kDAMuCDgP/jyai+2SEAzwuQYzNf
 ncRPl1evmZL/OMmncYg7fz5ZH3yUHx7fLtAdZ/y+Y/8awXIwP0e3PRkBQEscJEdTaC0Z
 epLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1694802215; x=1695407015;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=qYxJ9BLaAiW6l+EYIbRNs2EfTz/cHO+AS5Sh/AKxz44=;
 b=gTmuNepQKwXXx6cGwapm0taNM1G5YrhNS14bZTGtv5rqfTqjpnKtgW9E1TIY89ADL9
 beAI2GCPF82khfnou8IhH3HZoMfIQKTxPpykrpJDdUONIqKfSq9+xMZIsg2QylwGC8AW
 /Ju+JsEEs+GI1TSMmOoUcRG8JSVvEQw7XC8NHFws5E96pojwL3i4WSJ9PLDZpTNpbIXk
 HS9SlctUqA3VlQBeZhllf1Y0Y4WXKx/34Xl8qGogYyi61u+/PhN5byA8u5I5mLz6JGzF
 rlMKYCX4Z7JDAwLRQwxqOXl7mOO83tD1WEc8PkG2BN3se7HoCnz0xDVAfjt2nacsHq7Z
 IO3A==
X-Gm-Message-State: AOJu0Yxxza9PLJx6O79aNESJ1zB9f/2JQrJazgldeMieYsrFgThDuA1p
 Vz+F3qQ498CwbCk566HbLtw=
X-Google-Smtp-Source: AGHT+IHG/1JiPTqFFT+zwwZkcrKJI6knZFW6aeAV8ejlSH7FRmnFV6eCqbJgBY/RFpMVceTcMIbopQ==
X-Received: by 2002:a05:6e02:c08:b0:348:c57f:b016 with SMTP id
 d8-20020a056e020c0800b00348c57fb016mr2857517ile.3.1694802214890; 
 Fri, 15 Sep 2023 11:23:34 -0700 (PDT)
Received: from ?IPV6:2601:282:1e82:2350:2d71:6451:e70a:d690?
 ([2601:282:1e82:2350:2d71:6451:e70a:d690])
 by smtp.googlemail.com with ESMTPSA id
 a8-20020a92c708000000b0034f47db5b40sm1255500ilp.74.2023.09.15.11.23.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 15 Sep 2023 11:23:34 -0700 (PDT)
Message-ID: <157bf0b3-a37b-675a-1518-7161a47aed71@gmail.com>
Date: Fri, 15 Sep 2023 12:23:32 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.15.0
Content-Language: en-US
To: Stephen Hemminger <stephen@networkplumber.org>,
 Andrea Claudi <aclaudi@redhat.com>
References: <cover.1694625043.git.aclaudi@redhat.com>
 <844947000ac7744a3b40b10f9cf971fd15572195.1694625043.git.aclaudi@redhat.com>
 <20230915085912.78ffd25c@hermes.local>
From: David Ahern <dsahern@gmail.com>
In-Reply-To: <20230915085912.78ffd25c@hermes.local>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Roopa Prabhu <roopa@nvidia.com>
Subject: Re: [Bridge] [PATCH iproute2-next 1/2] configure: add the --color
	option
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
 <mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
 <mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

On 9/15/23 9:59 AM, Stephen Hemminger wrote:
> On Wed, 13 Sep 2023 19:58:25 +0200
> Andrea Claudi <aclaudi@redhat.com> wrote:
> 
>> This commit allows users/packagers to choose a default for the color
>> output feature provided by some iproute2 tools.
>>
>> The configure script option is documented in the script itself and it is
>> pretty much self-explanatory. The default value is set to "never" to
>> avoid changes to the current ip, tc, and bridge behaviour.
>>
>> Signed-off-by: Andrea Claudi <aclaudi@redhat.com>
>> ---
> 
> More build time config is not the answer either.
> Don't want complaints from distribution users about the change.
> Needs to be an environment variable or config file.

I liked the intent, and it defaults to off. Allowing an on by default
brings awareness of the usefulness of the color option.

I have applied the patches, so we need either a revert or followup based
on Stephen's objections.
