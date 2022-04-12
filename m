Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F71D4FD2C5
	for <lists.bridge@lfdr.de>; Tue, 12 Apr 2022 09:57:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 057C1408CD;
	Tue, 12 Apr 2022 07:57:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ERB--IRnAzKQ; Tue, 12 Apr 2022 07:57:23 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 515CC40867;
	Tue, 12 Apr 2022 07:57:22 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E2B01C0088;
	Tue, 12 Apr 2022 07:57:21 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A0E14C002C
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 07:57:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9DD6483E7E
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 07:57:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bTbOI6HcvQBs for <bridge@lists.linux-foundation.org>;
 Tue, 12 Apr 2022 07:57:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com
 [IPv6:2a00:1450:4864:20::12a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F333783E78
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 07:57:19 +0000 (UTC)
Received: by mail-lf1-x12a.google.com with SMTP id o2so9134890lfu.13
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 00:57:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=5k6k5OzQ/nNaAhxNcy8dyG0hqPxB3EyqZUWXJxiNXVA=;
 b=VZVe0At+6TDw7PG/U/Tm9jp7AUkurQCeKoeiTwS7Ewd+b5wIFjM4lFLnE/5MRKVpYw
 oTdiVYhGwcy6799RvVVQ1vhQTQOus+nSEnUAyc6OskwB3X6sy930UNZntaKE+DkDSDgg
 tLrutCJfRHFbdfKMpIVSavG0JGdIAZ/bMDKOw7MpQ8r91/MHfsO+YwyUBxsrQH5lbXxj
 85jtwmFsPxcZxp71FoQcp9dkhpwmD2iokeasjqyfI1JmPJ4uItraV582ieHNxjIRWdBW
 /4bcfbbHyXRJlRBoEbboncuRJ5tk/O38r99LSk1XgmmTMZdFizuSgODQwR9+SlZ279Nd
 JWQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=5k6k5OzQ/nNaAhxNcy8dyG0hqPxB3EyqZUWXJxiNXVA=;
 b=lUzTmL6FXETer4qmO9FPBj0PqBs8EDwRWOcLfBlDHk7ikP4+Xm61plmYQh4LqPKd1z
 pUO6ynHhmY0rNCQKj9PgPWAPaHL0/crYvJ7Bt2uGbQZ3MGdsvcHiJPXdrf5ppmoIGWY9
 9nqmoWvtb2lq8iEUpApM7yXHF/rDv3bd8USqA/uwda4cSX44iP/NhX0xsaYq4XD0cnlA
 IJqN9lVzGGOBCRHZcVqjd0FanVNxmBt10RM4ltUtzZtnt4yZmmW/N3dMi9MIEXQHQC4P
 Ym/kUkdF5+/efoedD45L75bhMDpChOsGKiKV7MkJUscpioKb1zsXakgbIvua4zqH5LsM
 bDOA==
X-Gm-Message-State: AOAM531hwXmLcl0FbUv6vQlPahRzIJM0hNGlZgVkBLwEmunGggoFAy8d
 Vo9aOvyRjgYNoGj+KWJ2Gzo=
X-Google-Smtp-Source: ABdhPJwLNjvF5QSGeOhLDAvLKzk2mwLLULfRnwHewmXY30GlxMr/jJlJoPQOjKhVXE6CruY2xnUD/w==
X-Received: by 2002:ac2:5ed1:0:b0:46b:8d11:84eb with SMTP id
 d17-20020ac25ed1000000b0046b8d1184ebmr11867442lfq.174.1649750237973; 
 Tue, 12 Apr 2022 00:57:17 -0700 (PDT)
Received: from wbg (h-158-174-22-128.NA.cust.bahnhof.se. [158.174.22.128])
 by smtp.gmail.com with ESMTPSA id
 x40-20020a056512132800b004489691436esm3564520lfu.146.2022.04.12.00.57.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Apr 2022 00:57:17 -0700 (PDT)
From: Joachim Wiberg <troglobit@gmail.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
In-Reply-To: <20220411202315.mxgqmvktodavdmwr@skbuf>
References: <20220411133837.318876-1-troglobit@gmail.com>
 <20220411133837.318876-10-troglobit@gmail.com>
 <20220411202315.mxgqmvktodavdmwr@skbuf>
Date: Tue, 12 Apr 2022 09:57:16 +0200
Message-ID: <87czhmbuoz.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: Re: [Bridge] [PATCH RFC net-next 09/13] selftests: forwarding:
	rename test groups for next bridge mdb tests
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

On Mon, Apr 11, 2022 at 20:23, Vladimir Oltean <vladimir.oltean@nxp.com> wrote:
> On Mon, Apr 11, 2022 at 03:38:33PM +0200, Joachim Wiberg wrote:
>> -TEST_GROUP_IP4="225.1.2.3"
>> -TEST_GROUP_IP6="ff02::42"
>> -TEST_GROUP_MAC="01:00:01:c0:ff:ee"
>> +PASS_GRP_IP4="225.1.2.3"
>> +FAIL_GRP_IP4="225.1.2.4"
>> +PASS_GRP_MAC="01:00:01:c0:ff:ee"
>> +FAIL_GRP_MAC="01:00:01:c0:ff:ef"
>> +
>> +PASS_GRP_IP6="ff02::42"
>> +FAIL_GRP_IP6="ff02::43"
> This is more than just the advertised rename, the fail groups are new
> and not used in this change.

Yeah I rushed the set out to get feedback on the overall take, sorry
about this.  I'll see to fixing this for the non-RFC drop.  Thanks!
