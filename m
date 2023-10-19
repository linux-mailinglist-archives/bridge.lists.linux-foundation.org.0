Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C2A8B7CFE1C
	for <lists.bridge@lfdr.de>; Thu, 19 Oct 2023 17:39:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C861641840;
	Thu, 19 Oct 2023 15:39:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C861641840
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=LCwo9AS7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m1Fx1ha7hm9g; Thu, 19 Oct 2023 15:39:57 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 59C00418A0;
	Thu, 19 Oct 2023 15:39:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 59C00418A0
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EF426C0DD3;
	Thu, 19 Oct 2023 15:39:55 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2CC55C0032
 for <bridge@lists.linux-foundation.org>; Thu, 19 Oct 2023 15:39:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 028B9831CA
 for <bridge@lists.linux-foundation.org>; Thu, 19 Oct 2023 15:39:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 028B9831CA
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=LCwo9AS7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DbWTKK7VoZCp for <bridge@lists.linux-foundation.org>;
 Thu, 19 Oct 2023 15:39:54 +0000 (UTC)
Received: from mail-oa1-x2e.google.com (mail-oa1-x2e.google.com
 [IPv6:2001:4860:4864:20::2e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 65BFC83147
 for <bridge@lists.linux-foundation.org>; Thu, 19 Oct 2023 15:39:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 65BFC83147
Received: by mail-oa1-x2e.google.com with SMTP id
 586e51a60fabf-1e9bb3a0bfeso4892344fac.3
 for <bridge@lists.linux-foundation.org>; Thu, 19 Oct 2023 08:39:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1697729993; x=1698334793;
 darn=lists.linux-foundation.org; 
 h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=LySR2XecswyJpTKHNhaWUfrh4R+6Oq/1v/uGML/2Hb0=;
 b=LCwo9AS7w95z0WB3rhiUtXEt7jU284rJr5CRyhKAdQqsrjgVZELpWBDLwWnUsCLN9+
 DSF4xMYrOdrajarRF0bIgYVvQHyNw7TnThFcESiI2/qZbWXX0TO7qE+kf4w4SNXWMOis
 zX0R3gJmSuZJqwQzBlu//ZkYOxnc2NeQdiJl3RnUSRw0Ty80HHVgVb6BUPpP8fRt4+2S
 RUz1OboRj3ZhfghvxljyszQfoVQHnnzTHWxq+vFKjirvwPt/11k/PIgzMFJzkaXA+bzK
 R8R51lksjlVxlGMQtpNYg41JB49aJBDWYe19ThVHCI9Mlcl8kqdT1UcojB2NVuAImTci
 dz2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697729993; x=1698334793;
 h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=LySR2XecswyJpTKHNhaWUfrh4R+6Oq/1v/uGML/2Hb0=;
 b=YVTIyLuiM/vhyptS8/pcxfoUFZyWbTf2YQN3ANp6+CUojp7xBcR57KLwDiNN+oa1It
 MN7R28HTxP1Kr1jV+R2fBiAmFuVRVqPHF4y3mKBMlOxVTTtZTD7u0ci+rUrgfQ0Lvl1I
 drMBDROcdIXmMqh2W5PsfMZdL9H6esOmKdlJG+0JKUW8LxYSj+u0jzgU99sE4NhA693E
 2DAS9i/uDmBl1NKMICNxsptoRgW9r2+8drxphGPSRaVyZ7AbOmmWhBE8R4miX05zVWM0
 7m71hUEStBZ//7AhK/xh9fkjopY2eoytq5Qx3kACte1KDR/KdJK/hnMLoJhyKzVe9hv5
 QUPg==
X-Gm-Message-State: AOJu0YzXfUGO/wqBSrsQ3LsHhl9Mj2Qagh3W2Qj8Z637UvKV2ysR9xcJ
 UKFlGRCDiA2CH92TFIa6QwdYAI5SwPXxFZprros=
X-Google-Smtp-Source: AGHT+IEblKALCdtdwM6npujcBVyeCz5vM3TUwTHXrues0FaBOt0jLzJGHC7L2TN+A5IH23QfIIkbNW/oXvKtzZJHQhM=
X-Received: by 2002:a05:6870:8f96:b0:1d5:a85a:13b6 with SMTP id
 vd22-20020a0568708f9600b001d5a85a13b6mr2284548oab.45.1697729993388; Thu, 19
 Oct 2023 08:39:53 -0700 (PDT)
MIME-Version: 1.0
From: Scott Wadkins <scottwadkins1@gmail.com>
Date: Thu, 19 Oct 2023 08:39:40 -0700
Message-ID: <CAAvfbz_EQgVooHGiYrOGf+xYd3CCEj9M+_TBtySubvOccVgtxA@mail.gmail.com>
To: razor@blackwall.org
Content-Type: multipart/alternative; boundary="0000000000002e393806081391fb"
Cc: jnixdorf-oss@avm.de, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, edumazet@google.com, roopa@nvidia.com,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 1/2] bridge: Add a limit on FDB entries
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

--0000000000002e393806081391fb
Content-Type: text/plain; charset="UTF-8"



--0000000000002e393806081391fb
Content-Type: text/html; charset="UTF-8"

<div dir="auto"><div dir="auto"><br></div><div dir="auto"><br></div><div dir="auto"><br></div></div>

--0000000000002e393806081391fb--
