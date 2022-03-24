Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D03AD4E61C6
	for <lists.bridge@lfdr.de>; Thu, 24 Mar 2022 11:32:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D6D2D4102A;
	Thu, 24 Mar 2022 10:32:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2hg6jJWDJPBY; Thu, 24 Mar 2022 10:32:20 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 419E441031;
	Thu, 24 Mar 2022 10:32:19 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E13B7C0082;
	Thu, 24 Mar 2022 10:32:18 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 444B8C000B
 for <bridge@lists.linux-foundation.org>; Thu, 24 Mar 2022 10:32:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3573A4102A
 for <bridge@lists.linux-foundation.org>; Thu, 24 Mar 2022 10:32:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9oprDovY0J8W for <bridge@lists.linux-foundation.org>;
 Thu, 24 Mar 2022 10:32:14 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com
 [IPv6:2a00:1450:4864:20::231])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5E482400A8
 for <bridge@lists.linux-foundation.org>; Thu, 24 Mar 2022 10:32:14 +0000 (UTC)
Received: by mail-lj1-x231.google.com with SMTP id c15so5510092ljr.9
 for <bridge@lists.linux-foundation.org>; Thu, 24 Mar 2022 03:32:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=yIGBhHdGmmA6wfhq/C+I/3lptUPuCRf9dLkGG/+jm/0=;
 b=UECv386z8DX2m17XrbzsWDtNOzryfJvtsSbyNTgODZ/baOrSAi26WyQodjOx/EVuTN
 i9gdHVYgFlKbM9Q1+/08aVpUWHklq+lG/ToDHtsZwCGIbpPEHAkKJwagSfcUXchYQejK
 CEImEFdTQxPQ1Jk2Gq5CPAcOGTEVQlzJT13oM8IuTCrtBQ5xUp1CLp/Ot0YOfOGJ578W
 Vjnyi9PMvGfFyTaOCvwUxNTPFE3UMKE8WF+xWZCJf92txuRqerdZCpuWlHA0tiW9mYZr
 cqBHnDx2AnoP/LKtZ6tYr5mbrEwS85AKdUkKcKL+QNtDieFCglv+4bovA/N8I6rA8S9r
 /6ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=yIGBhHdGmmA6wfhq/C+I/3lptUPuCRf9dLkGG/+jm/0=;
 b=jNvgGplmWosH+O5vImJBQsetzRjxAaZs9klhdkR1C0OnjXVVDXTh8sZ9zshKS5FUWt
 DSjsPKNoMfH4MSe7AfZ/EYJbj7TeWHr05obpQfluRxmYbj3jKA65GChoSQdTzG9IOAcQ
 nzUkZqbR96ZInDQt1eCAn2GGGv8KeqDRh5Mg69p//eEHldh7JgHYAM6ruONp71FqiUg0
 YxIbMU/V3x2YsVKDh849Cv4TvUQzXnKKgZ1vwYf7+mdw0SorBzxHBdB/UagyW9u+9oV9
 XsHavHF4m1RRxuas/CdB4ZGEStrg4tfMPQAoO7d3EQYCcenCrfZMBhI2oCUi8dqUNR4E
 fyhQ==
X-Gm-Message-State: AOAM533DSJm6wRstBVcg7uJMRIjDR/TyeC538KzP5TKupsBtz4XERgiT
 siirmPvqAU1R2lModnCSboo=
X-Google-Smtp-Source: ABdhPJzCULThTsLuOBtIbhx5MseJh312jiRpFnwVxEIh8muMTtUjy8iMJZWGuKG5tjrjFK2IU8HUuA==
X-Received: by 2002:a2e:9904:0:b0:247:ec95:fdee with SMTP id
 v4-20020a2e9904000000b00247ec95fdeemr3684456lji.291.1648117931993; 
 Thu, 24 Mar 2022 03:32:11 -0700 (PDT)
Received: from wse-c0127 ([208.127.141.29]) by smtp.gmail.com with ESMTPSA id
 g27-20020a2eb5db000000b002498222c8dasm286633ljn.65.2022.03.24.03.32.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Mar 2022 03:32:11 -0700 (PDT)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: Vladimir Oltean <olteanv@gmail.com>, Hans Schultz <schultz.hans@gmail.com>
In-Reply-To: <20220323144304.4uqst3hapvzg3ej6@skbuf>
References: <20220317093902.1305816-1-schultz.hans+netdev@gmail.com>
 <20220317093902.1305816-3-schultz.hans+netdev@gmail.com>
 <86o81whmwv.fsf@gmail.com> <20220323123534.i2whyau3doq2xdxg@skbuf>
 <86wngkbzqb.fsf@gmail.com> <20220323144304.4uqst3hapvzg3ej6@skbuf>
Date: Thu, 24 Mar 2022 11:32:08 +0100
Message-ID: <86lewzej4n.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>,
 Ido Schimmel <idosch@nvidia.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Shuah Khan <shuah@kernel.org>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH v2 net-next 2/4] net: switchdev: add support
 for offloading of fdb locked flag
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

On ons, mar 23, 2022 at 16:43, Vladimir Oltean <olteanv@gmail.com> wrote:
> On Wed, Mar 23, 2022 at 01:49:32PM +0100, Hans Schultz wrote:
>> >> Does someone have an idea why there at this point is no option to add a
>> >> dynamic fdb entry?
>> >> 
>> >> The fdb added entries here do not age out, while the ATU entries do
>> >> (after 5 min), resulting in unsynced ATU vs fdb.
>> >
>> > I think the expectation is to use br_fdb_external_learn_del() if the
>> > externally learned entry expires. The bridge should not age by itself
>> > FDB entries learned externally.
>> >
>> 
>> It seems to me that something is missing then?
>> My tests using trafgen that I gave a report on to Lunn generated massive
>> amounts of fdb entries, but after a while the ATU was clean and the fdb
>> was still full of random entries...
>
> I'm no longer sure where you are, sorry..
> I think we discussed that you need to enable ATU age interrupts in order
> to keep the ATU in sync with the bridge FDB? Which means either to
> delete the locked FDB entries from the bridge when they age out in the
> ATU, or to keep refreshing locked ATU entries.
> So it seems that you're doing neither of those 2 things if you end up
> with bridge FDB entries which are no longer in the ATU.

Any idea why G2 offset 5 ATUAgeIntEn (bit 10) is set? There is no define
for it, so I assume it is something default?
