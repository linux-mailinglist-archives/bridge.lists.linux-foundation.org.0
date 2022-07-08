Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ED62656B8FB
	for <lists.bridge@lfdr.de>; Fri,  8 Jul 2022 13:56:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 22738425AA;
	Fri,  8 Jul 2022 11:56:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 22738425AA
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=iT2z7eTB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fejOvWme0de1; Fri,  8 Jul 2022 11:56:34 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 2E123425AD;
	Fri,  8 Jul 2022 11:56:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2E123425AD
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C7796C0078;
	Fri,  8 Jul 2022 11:56:32 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 07701C002D
 for <bridge@lists.linux-foundation.org>; Fri,  8 Jul 2022 11:56:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CF490613CA
 for <bridge@lists.linux-foundation.org>; Fri,  8 Jul 2022 11:56:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CF490613CA
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=iT2z7eTB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l2PvcuZJgoTE for <bridge@lists.linux-foundation.org>;
 Fri,  8 Jul 2022 11:56:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 77461613C6
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 77461613C6
 for <bridge@lists.linux-foundation.org>; Fri,  8 Jul 2022 11:56:29 +0000 (UTC)
Received: by mail-ej1-x632.google.com with SMTP id u12so37271890eja.8
 for <bridge@lists.linux-foundation.org>; Fri, 08 Jul 2022 04:56:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=AG3Sm3NazJDBZSa/naVDAcI9egy0zTLjaKLWd6YOLPM=;
 b=iT2z7eTBAPBciEDO1xjz6EbYuR7iyR313S/TVdseEVTHd2GQMu/GurcYn7z8vAJGbl
 AueMvC/9KeZzWbXUQ/D7vnqLcpKUiuJsCPSVjs2WNiHnl4R//G/AKidZGjiKn3cb3rR6
 Ryeg9E/uIX4Y2xkJ1Rwx9DrUMWBZds6IHw2HsRA/1muEkSN2KO5TQH+L9Gz8oq0MAl4j
 jTKNmWAE4Nn66sOBYipmxMB2wPqr6mEv4NKyrxzAr7SDF7JazVXsa+0pqZ/LH3I18H6X
 ZSi+5QXc/LEJekr8nQ0BTilUq8qoLoYBFd7ivJQrBlRXEHuL08l7gRwhlyz86tf16xZV
 NBpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=AG3Sm3NazJDBZSa/naVDAcI9egy0zTLjaKLWd6YOLPM=;
 b=BZzecZO6DRg+97NvM0hEURzo11YQLE6fyXn3pa2oMJXzIrQYdNlmG2JANbNz1DlS5A
 xby8N8LoeCwG7CJAUb7pGGpcTgh9oFAPYFqpny2ENBKE4Ch+HaB7ta6YksV8i9QfLAYe
 JDh/6cshgWHH/F/EqszX1x4vyGP08lLxNnOONtJ7/tD1GofNNe1/AREsp/osN31lnjFZ
 2BL6SUHIK4i+R9Zqm60a3svRbjQ87H3IliFMKVe6tyCod0DlqyNAgEjAjxOqLhThVZBc
 /Ct4VY72yJB0f5e7Oyi4Fe2P3/FO8AfwLztTGxGfMHZaQV3Rqbl5qW/iuiAi4Pge8pq/
 J1Ww==
X-Gm-Message-State: AJIora96lwrl0m6bt4uDVKrzoKEG5USDXT0MlOGze+1B33CKd07vs5bQ
 CYbfKCDoEId6f4Bs77Cn75o=
X-Google-Smtp-Source: AGRyM1t4dBzUEoo4AjYp4Cfpcy4Q9MRFHWXy4VzQ7Tgscb9ih1OqP7B9zSxpUwaP9YMpEzgWuUC/ww==
X-Received: by 2002:a17:907:1c8f:b0:6e8:f898:63bb with SMTP id
 nb15-20020a1709071c8f00b006e8f89863bbmr3248676ejc.721.1657281387546; 
 Fri, 08 Jul 2022 04:56:27 -0700 (PDT)
Received: from skbuf ([188.25.231.143]) by smtp.gmail.com with ESMTPSA id
 ec35-20020a0564020d6300b004316f94ec4esm30225678edb.66.2022.07.08.04.56.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Jul 2022 04:56:26 -0700 (PDT)
Date: Fri, 8 Jul 2022 14:56:24 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: netdev@kapio-technology.com
Message-ID: <20220708115624.rrjzjtidlhcqczjv@skbuf>
References: <20220707152930.1789437-1-netdev@kapio-technology.com>
 <20220707152930.1789437-4-netdev@kapio-technology.com>
 <20220708084904.33otb6x256huddps@skbuf>
 <e6f418705e19df370c8d644993aa9a6f@kapio-technology.com>
 <20220708091550.2qcu3tyqkhgiudjg@skbuf>
 <e3ea3c0d72c2417430e601a150c7f0dd@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e3ea3c0d72c2417430e601a150c7f0dd@kapio-technology.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Ido Schimmel <idosch@nvidia.com>,
 Vivien Didelot <vivien.didelot@gmail.com>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Paolo Abeni <pabeni@redhat.com>,
 Shuah Khan <shuah@kernel.org>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH v4 net-next 3/6] drivers: net: dsa: add locked
 fdb entry flag to drivers
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

On Fri, Jul 08, 2022 at 11:50:33AM +0200, netdev@kapio-technology.com wrote:
> On 2022-07-08 11:15, Vladimir Oltean wrote:
> > When the possibility for it to be true will exist, _all_ switchdev
> > drivers will need to be updated to ignore that (mlxsw, cpss, ocelot,
> > rocker, prestera, etc etc), not just DSA. And you don't need to
> > propagate the is_locked flag to all individual DSA sub-drivers when none
> > care about is_locked in the ADD_TO_DEVICE direction, you can just ignore
> > within DSA until needed otherwise.
> > 
> 
> Maybe I have it wrong, but I think that Ido requested me to send it to all
> the drivers, and have them ignore entries with is_locked=true ...

I don't think Ido requested you to ignore is_locked from all DSA
drivers, but instead from all switchdev drivers maybe. Quite different.

In any case I'm going to take a look at this patch set more closely and
run the selftest on my Marvell switch, but I can't do this today
unfortunately. I'll return with more comments.
