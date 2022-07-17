Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9393C57768C
	for <lists.bridge@lfdr.de>; Sun, 17 Jul 2022 16:03:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2556683EE2;
	Sun, 17 Jul 2022 14:03:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2556683EE2
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=IOfVoC11
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W1V4H4rneX34; Sun, 17 Jul 2022 14:03:35 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id A72C983EE3;
	Sun, 17 Jul 2022 14:03:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A72C983EE3
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 442F0C0078;
	Sun, 17 Jul 2022 14:03:34 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DED59C002D
 for <bridge@lists.linux-foundation.org>; Sun, 17 Jul 2022 14:03:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A426E83EE3
 for <bridge@lists.linux-foundation.org>; Sun, 17 Jul 2022 14:03:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A426E83EE3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BaS6EqqBGBL6 for <bridge@lists.linux-foundation.org>;
 Sun, 17 Jul 2022 14:03:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5F8D583EE2
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5F8D583EE2
 for <bridge@lists.linux-foundation.org>; Sun, 17 Jul 2022 14:03:31 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id m13so1937033edc.5
 for <bridge@lists.linux-foundation.org>; Sun, 17 Jul 2022 07:03:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=jMRTq+amxNbsBbaOEm6j4FB9NZ1ewtvtmU0mvf4Nm0M=;
 b=IOfVoC11XaS/bWBvLr7Vh11vHQNhwzU0vVkGdNo3Legzm2DOd3dsW/pf8Rh9UjPWvX
 JuW4lEESZ/2apkqE1vo/b/0jvOg/Jf4+7VMt8UaL99wPJ+sn56IuX483kWkcZN3oyoVm
 XToQ4LXI+rik0Y+WztVuU70lo5i92MQulNSXG7vji4vHLtK/VwnrCQx63blturHmJvML
 cdzmEn1GlbHtzRPNw4I/rTk14965Bq/tNQPmfHAUuE5JyL3ItbnQrRJuMi9apyDejczM
 I9t/HENKdlD8vqV7gjUbiCQrU9DiPG1mqk0a1iu25lYshFwxl9SoPiX/JQwBuvT5557j
 EhWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=jMRTq+amxNbsBbaOEm6j4FB9NZ1ewtvtmU0mvf4Nm0M=;
 b=q6iP/qMhDBjILFz4h5MCe/01iibh98Ba4u6O04p/cGkuRY00yj//ZKrlshJ8REo6F3
 iB0A89dsjFZUtuPCDd/2EFIR2PcJJAaLYNZBGiNQhiZLXhqpuNiaWVbmbJ89aB1YfJfs
 CvRTWCmiaQY8a/NUSXbh1d9hkxY1Ilf7dDnztGBJIkiNDZyluGZmhwOvb+GQMMSlDNm9
 gna94iGVt3eAgmlX12XkUEQJFI0LDeLWltaqg38DTNS+qhNNfk4QDIvQe/Pt3Un33rp1
 agnIySywE9FX7nq706jQvM6WvQwN+0JYW0GNX7wjKz0CRqoTINbG9PwbyCMNCKs5aus4
 QgvA==
X-Gm-Message-State: AJIora8vX5EO8zsdl9PHoGjIGJ+PIVR3H4giE9sccSQDIL0CboUOYw1y
 sQmPnyXeZ1BOP3lSUSNYgNw=
X-Google-Smtp-Source: AGRyM1skUAsFAa+uXtacl2f+72Kz0xptC5vppBw7fL50BB6Blny25XGRyWrXql3Nv8Qfibszf1akNA==
X-Received: by 2002:a05:6402:d0a:b0:437:66ca:c211 with SMTP id
 eb10-20020a0564020d0a00b0043766cac211mr31694104edb.29.1658066609442; 
 Sun, 17 Jul 2022 07:03:29 -0700 (PDT)
Received: from skbuf ([188.25.231.115]) by smtp.gmail.com with ESMTPSA id
 2-20020a170906218200b0072a815f3344sm4348879eju.137.2022.07.17.07.03.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 17 Jul 2022 07:03:28 -0700 (PDT)
Date: Sun, 17 Jul 2022 17:03:25 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Hans S <schultz.hans@gmail.com>
Message-ID: <20220717140325.p5ox5mhqedbyyiz4@skbuf>
References: <20220630111634.610320-1-hans@kapio-technology.com>
 <Yr2LFI1dx6Oc7QBo@shredder>
 <CAKUejP6LTFuw7d_1C18VvxXDuYaboD-PvSkk_ANSFjjfhyDGkg@mail.gmail.com>
 <Yr778K/7L7Wqwws2@shredder>
 <CAKUejP5w0Dn8y9gyDryNYy7LOUytqZsG+qqqC8JhRcvyC13=hQ@mail.gmail.com>
 <20220717134610.k3nw6mam256yxj37@skbuf>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220717134610.k3nw6mam256yxj37@skbuf>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, bridge@lists.linux-foundation.org,
 Ido Schimmel <idosch@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>,
 Roopa Prabhu <roopa@nvidia.com>, Hans Schultz <schultz.hans+netdev@gmail.com>,
 Vivien Didelot <vivien.didelot@gmail.com>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Shuah Khan <shuah@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 linux-kernel@vger.kernel.org
Subject: Re: [Bridge] [PATCH net-next v1 1/1] net: bridge: ensure that
 link-local traffic cannot unlock a locked port
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

On Sun, Jul 17, 2022 at 04:46:10PM +0300, Vladimir Oltean wrote:
> Here, what happens is that a locked port learns the MAC SA from the
> traffic it didn't drop, i.e. link-local. In other words, the bridge
> behaves as expected and instructed: +locked +learning will cause just
> that. It's the administrator's fault for not disabling learning.
> It's also the mv88e6xxx driver's fault for not validating the "locked" +
> "learning" brport flag *combination* until it properly supports "+locked
> +learning" (the feature you are currently working on).
> 
> I'm still confused why we don't just say that "+locked -learning" means
> plain 802.1X, "+locked +learning" means MAB where we learn locked FDB entries.

Or is it the problem that a "+locked +learning" bridge port will learn
MAC SA from link-local traffic, but it will create FDB entries without
the locked flag while doing so? The mv88e6xxx driver should react to the
'locked' flag from both directions (ADD_TO_DEVICE too, not just ADD_TO_BRIDGE).
