Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F1273D74F
	for <lists.bridge@lfdr.de>; Mon, 26 Jun 2023 07:50:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4E6DB8200D;
	Mon, 26 Jun 2023 05:50:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4E6DB8200D
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=yahoo.com header.i=@yahoo.com header.a=rsa-sha256 header.s=s2048 header.b=iSwh70zP
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hSBI9Fom8FB9; Mon, 26 Jun 2023 05:50:29 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id C9F8F81E6A;
	Mon, 26 Jun 2023 05:50:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C9F8F81E6A
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6D286C008C;
	Mon, 26 Jun 2023 05:50:28 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0AE3FC0029
 for <bridge@lists.linux-foundation.org>; Mon, 26 Jun 2023 05:50:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D372160B99
 for <bridge@lists.linux-foundation.org>; Mon, 26 Jun 2023 05:50:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D372160B99
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=yahoo.com header.i=@yahoo.com
 header.a=rsa-sha256 header.s=s2048 header.b=iSwh70zP
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zTXRZ0iWFSme for <bridge@lists.linux-foundation.org>;
 Mon, 26 Jun 2023 05:50:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 77A6160B21
Received: from sonic306-19.consmr.mail.gq1.yahoo.com
 (sonic306-19.consmr.mail.gq1.yahoo.com [98.137.68.82])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 77A6160B21
 for <bridge@lists.linux-foundation.org>; Mon, 26 Jun 2023 05:50:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1687758624; bh=YSPfpiwOkBQ46XmUoyeSet/T0M+S11yQNJsZwzaMjfg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject:Reply-To;
 b=iSwh70zPOJBOQnKaziyB5LolyzqpikN5M1m9tMyTLVltyv3Cxt+lo3W2+wWpqzbj2bamHgx9gIjE1TLjQSeZpvPy9hbRVofxO0DRBTABPMfcCrwYHBz8QxvmHRPf49VRSAlm3ilnd/ESSvBg7Bsyj8ESKhpgk7nwvTG/12S0g2f7+lOy7+L8mip/vpi7myVihS/Wjp155/ClXDePzmLv+m80J/ikiOWI0RyGODnWx656kC6cbhp49js3Y/Ye4FV/7/TgcellX++wQlbeukXzAOjlhOancO5U2BM1ueOT6P1ZPybm2lNpXGFrx18vsL2pUPnzIZRtd9Y4dYabwoTAGg==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1687758624; bh=m3FvznhgHOpvj8k7IEuJ5leuJe78mMgrUbbJzz/+kGp=;
 h=X-Sonic-MF:From:To:Subject:Date:From:Subject;
 b=dWCwyxwVIr0R014B2UkCfse9rORV9nWMbF/438S3UMyDiEgsAvbcYL3+O9A9e6sPBCqnd1C0CAfMFDWOi/aAlQS6J6gJwSUTUE2+/AScdj+xZDTShFbqnM98IW0sNNDn47fG0ZFV5MGKIeGgQdj4MWhv+ZqZQj9udgG6COlx4lSY642OFT6hqzFHaNEtAQfJ7SD7HwmVivI4laVGV192U018tgb5ZnIHnjFrkTWJe9cTpmY4+QDcyeNreJ0n4hHYSnDvtH/i2qDmw+vq64vzDrvqHXzSolPG/86VXoj82vr0fWwBn5d/ILn1i/PEdZq/xNbbaeVXuoE9tfCzAA3JIQ==
X-YMail-OSG: r0usPE8VM1nYaCvVbAWqc7TrSh2GRlB1hPF3gBnuic.eHpFVJTpv_G8iz__PWfR
 XHjysvHD4Zg7W6x9j9Ojwi.KF9dqXgc27O_5_3O51TaK9IWTooYRFUX7kroq2Cm8Mz3sitxl2LX8
 DWqO39fktnUnwT8kWHenJ.qvBRY8MqHxlF_HEzhaW6cSzveRqAM3tOSFtqewspAinFNkjnGJbkdH
 49Ei9dct6usZs3ISARXNl9zCR4lZNFwEF_qU4NyhQ0l7BYZ508f2yGHVu.RVlW6e07atJL3T5H8a
 D4HD0QEXnbvojZlJzItO_Q.krX.VcNeD.Hs9YquLv5YNt0e.wX_jaQOiJwvptN42NKYSATQX.GhD
 TpBVE3gwYZvtEIZTe0frhw9Q3DhTQVM.qAd..GGW8hon0WDVGDruj8xn2abhv4vjFnmv3kjPrIAs
 aFi52gEHoXytALWbLtB6tPcckOQhrsfaHrj7jbSffpMItJCv1KJQLPTaryp87O_X4E0MYfGt2jPo
 bypJ2exnmENL2KAAaXAhdAQbwuID55BldC3f0oq.UbMDh9llBL9c0TGz_lznUsr80hWHF94InJ80
 bTKnM49PTOB5eNTA5PpqKmy8sW6uLxbU1.3jYzMT485ZK8x5MBxLxtxpbUrUc2aL.ss65GyT44D4
 jRBxcRuThGFLwRMfyBROEwBpHRvkCY01dTbVO5ihUA9C_omNHaE.fWVT_OghtoQgc1DlM_OrQNCI
 J42kxqd3ad28tIDaCR92i6AWb54Fcn9UrUtQpA1ZnPM0.FF1BT.DiKyBBiJyFYQx3M7Y5TJys5Fy
 DdKDnqUbYwhi1fWUh_z37vS39_bxyinCP05Yc9Q6unfyk5Rrozy2exIPxNpgjuW8RPgyYCwT.pRa
 bNb17uO7d8IhR2OJb.xdaIK33n7SdYi5mn8LaueUFEuFzpJVSCMM9TfDbvggQOTQhXuHuScFaQma
 7Bq3a8ZxcN3qVBrMsr1MLPFfXfMYjji_t_NgtY7aSPzlNLXoat_fPgr_9zcjcvGsStSIwR1sPqb_
 y64V0D_Xz7VD97fBDUKphVQBXs01wM1d6R6XGHPBx4z3sW6zfEyQXtyRnDgq_.HrRV9rAtdiU1kw
 hQe3ItEkJASUcEYtMxfwhWBXiNhh45We6sr1mPvj709Db80nu.L3CyATk_htgbNEKASvoI5Y5NsP
 SG4zP3.ikJVAdP_fgUdgCjiJhbO0gkjy.XTlAIuzZ5p7HCz0uyIgd.sKNXG9.FZ5teCL5nKc_0SA
 XbJeru5IfeRNLL4AZwvHH9qC_i16CREi3HYr.cvZYQ2v3ZObV5oGcIOPSavzFtiYGnb2UapPgq61
 wVjjQh3fr0yvogIIl5uTG5Xab4OrgX88SOsOq9nj8A6S_Wyd_hyfS4encthpEBy0x9BkMqYUo60n
 mFsqI3oqmC8gOP0qXqj7CQ9FSkSzsuCh1YYIy4PHi9q4ers2JnojuT0Mm0VE3wh75aolS9ZjK_xL
 F8ScYq4EshFw9Umxk.vnLk62GjmrxPk3z0r7zhybKUJbHpWf64bZWVZgA7zACu8bRMo.VL9EdfVH
 5KvMj_.uxAs37w2xRLSQJxxqoESH2Fsd3dkTKqubVgL2pZYwbOuB5r93etLNyoVzwU6XkPf1f3zS
 8l_daXL.DCOAB9JS4WpNJHk.JEh4pnUoVPpQA1j3aAtN94qm8rrbjkh0ctM_oJrdo4tFVNFD6.Nr
 2ueFP9T78wD4XQSoqsXQXKf6vc8zSRphcOM6yt5raAU43XoR4K6pgBN7P5fx.K_mlSJddoWnrp2m
 bkqh95LP1UZvS_kQZZ3VqfCOBIvY0evdqMBYsualgppzRJ0g638P24bPpADx5AtASg_Lc8LY8nJ2
 .PauUxsGMlRNg8W8JbZm4aXqKcj8Q_t0PSOpROvbS4X4DIjcbBzew21SRDLdF7hW2UePtLeAHKXl
 UwhqUopwyCQ6rW6XSESFl0LJUrmjB6z2hsI2L8.rlrEY2XnW_V90oc1_PT5HP4KctfqxK2bmPVOU
 XErcHJxV55RGx2hA_hyi9.52huQIAqyf_KZyN2UenSInA0n6I17h_UgAo.hRKISaJAdU_DsMSASI
 U7WY5FWp6bUrMSOg8jFxE_6zmOnguCgB7Sg1PG98Nqs.6Qq.s8S7DXWGcJwr2zRkpVwqID_z7Jx.
 DNqGcFG0Gj7iHyTMHwqjj6CGfFWDUBznpRhJgqFdRCsDVoqFc5Qi3hwWJqv7R0f5nfA8f0Sk1QDn
 0xSlMgc42H3GBEl1ziRaZ94U.qZfB1LYWun48wmNchEzia2xBTQU1UMyk.g--
X-Sonic-MF: <astrajoan@yahoo.com>
X-Sonic-ID: cf970580-2d62-457c-b04b-30abe5780566
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic306.consmr.mail.gq1.yahoo.com with HTTP; Mon, 26 Jun 2023 05:50:24 +0000
Received: by hermes--production-ne1-574d4b7954-scd6l (Yahoo Inc. Hermes SMTP
 Server) with ESMTPA ID c49500d6fa260bb4bc461a6730467256; 
 Mon, 26 Jun 2023 05:50:20 +0000 (UTC)
To: mudongliangabcd@gmail.com
Date: Sun, 25 Jun 2023 22:50:04 -0700
Message-Id: <20230626055004.29303-1-astrajoan@yahoo.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <CAD-N9QXZFMFGp3Vw4449Bx1-ttDVSF3hiwSw=e6+D096UDNfvw@mail.gmail.com>
References: <CAD-N9QXZFMFGp3Vw4449Bx1-ttDVSF3hiwSw=e6+D096UDNfvw@mail.gmail.com>
MIME-Version: 1.0
Reported-by: syzbot+881d65229ca4f9ae8c84@syzkaller.appspotmail.com
Content-Transfer-Encoding: 8bit
Cc: ivan.orlov0322@gmail.com, arnd@arndb.de, roopa@nvidia.com,
 astrajoan@yahoo.com, bridge@lists.linux-foundation.org,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 edumazet@google.com, nikolay@nvidia.com, netdev@vger.kernel.org,
 syzbot+881d65229ca4f9ae8c84@syzkaller.appspotmail.com, kuba@kernel.org,
 skhan@linuxfoundation.org, pabeni@redhat.com, davem@davemloft.net
Subject: [Bridge] [PATCH] can: j1939: prevent deadlock by changing
	j1939_socks_lock to rwlock
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
From: Ziqi Zhao via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Ziqi Zhao <astrajoan@yahoo.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

The following 3 locks would race against each other, causing the
deadlock situation in the Syzbot bug report:

- j1939_socks_lock
- active_session_list_lock
- sk_session_queue_lock

A reasonable fix is to change j1939_socks_lock to an rwlock, since in
the rare situations where a write lock is required for the linked list
that j1939_socks_lock is protecting, the code does not attempt to
acquire any more locks. This would break the circular lock dependency,
where, for example, the current thread already locks j1939_socks_lock
and attempts to acquire sk_session_queue_lock, and at the same time,
another thread attempts to acquire j1939_socks_lock while holding
sk_session_queue_lock.

NOTE: This patch along does not fix the unregister_netdevice bug
reported by Syzbot; instead, it solves a deadlock situation to prepare
for one or more further patches to actually fix the Syzbot bug, which
appears to be a reference counting problem within the j1939 codebase.

Signed-off-by: Ziqi Zhao <astrajoan@yahoo.com>
---
 net/can/j1939/j1939-priv.h |  2 +-
 net/can/j1939/main.c       |  2 +-
 net/can/j1939/socket.c     | 25 +++++++++++++------------
 3 files changed, 15 insertions(+), 14 deletions(-)

diff --git a/net/can/j1939/j1939-priv.h b/net/can/j1939/j1939-priv.h
index 16af1a7f80f6..74f15592d170 100644
--- a/net/can/j1939/j1939-priv.h
+++ b/net/can/j1939/j1939-priv.h
@@ -86,7 +86,7 @@ struct j1939_priv {
 	unsigned int tp_max_packet_size;
 
 	/* lock for j1939_socks list */
-	spinlock_t j1939_socks_lock;
+	rwlock_t j1939_socks_lock;
 	struct list_head j1939_socks;
 
 	struct kref rx_kref;
diff --git a/net/can/j1939/main.c b/net/can/j1939/main.c
index ecff1c947d68..a6fb89fa6278 100644
--- a/net/can/j1939/main.c
+++ b/net/can/j1939/main.c
@@ -274,7 +274,7 @@ struct j1939_priv *j1939_netdev_start(struct net_device *ndev)
 		return ERR_PTR(-ENOMEM);
 
 	j1939_tp_init(priv);
-	spin_lock_init(&priv->j1939_socks_lock);
+	rwlock_init(&priv->j1939_socks_lock);
 	INIT_LIST_HEAD(&priv->j1939_socks);
 
 	mutex_lock(&j1939_netdev_lock);
diff --git a/net/can/j1939/socket.c b/net/can/j1939/socket.c
index 35970c25496a..6dce9d645116 100644
--- a/net/can/j1939/socket.c
+++ b/net/can/j1939/socket.c
@@ -80,16 +80,16 @@ static void j1939_jsk_add(struct j1939_priv *priv, struct j1939_sock *jsk)
 	jsk->state |= J1939_SOCK_BOUND;
 	j1939_priv_get(priv);
 
-	spin_lock_bh(&priv->j1939_socks_lock);
+	write_lock_bh(&priv->j1939_socks_lock);
 	list_add_tail(&jsk->list, &priv->j1939_socks);
-	spin_unlock_bh(&priv->j1939_socks_lock);
+	write_unlock_bh(&priv->j1939_socks_lock);
 }
 
 static void j1939_jsk_del(struct j1939_priv *priv, struct j1939_sock *jsk)
 {
-	spin_lock_bh(&priv->j1939_socks_lock);
+	write_lock_bh(&priv->j1939_socks_lock);
 	list_del_init(&jsk->list);
-	spin_unlock_bh(&priv->j1939_socks_lock);
+	write_unlock_bh(&priv->j1939_socks_lock);
 
 	j1939_priv_put(priv);
 	jsk->state &= ~J1939_SOCK_BOUND;
@@ -329,13 +329,13 @@ bool j1939_sk_recv_match(struct j1939_priv *priv, struct j1939_sk_buff_cb *skcb)
 	struct j1939_sock *jsk;
 	bool match = false;
 
-	spin_lock_bh(&priv->j1939_socks_lock);
+	read_lock_bh(&priv->j1939_socks_lock);
 	list_for_each_entry(jsk, &priv->j1939_socks, list) {
 		match = j1939_sk_recv_match_one(jsk, skcb);
 		if (match)
 			break;
 	}
-	spin_unlock_bh(&priv->j1939_socks_lock);
+	read_unlock_bh(&priv->j1939_socks_lock);
 
 	return match;
 }
@@ -344,11 +344,11 @@ void j1939_sk_recv(struct j1939_priv *priv, struct sk_buff *skb)
 {
 	struct j1939_sock *jsk;
 
-	spin_lock_bh(&priv->j1939_socks_lock);
+	read_lock_bh(&priv->j1939_socks_lock);
 	list_for_each_entry(jsk, &priv->j1939_socks, list) {
 		j1939_sk_recv_one(jsk, skb);
 	}
-	spin_unlock_bh(&priv->j1939_socks_lock);
+	read_unlock_bh(&priv->j1939_socks_lock);
 }
 
 static void j1939_sk_sock_destruct(struct sock *sk)
@@ -484,6 +484,7 @@ static int j1939_sk_bind(struct socket *sock, struct sockaddr *uaddr, int len)
 
 		priv = j1939_netdev_start(ndev);
 		dev_put(ndev);
+
 		if (IS_ERR(priv)) {
 			ret = PTR_ERR(priv);
 			goto out_release_sock;
@@ -1078,12 +1079,12 @@ void j1939_sk_errqueue(struct j1939_session *session,
 	}
 
 	/* spread RX notifications to all sockets subscribed to this session */
-	spin_lock_bh(&priv->j1939_socks_lock);
+	read_lock_bh(&priv->j1939_socks_lock);
 	list_for_each_entry(jsk, &priv->j1939_socks, list) {
 		if (j1939_sk_recv_match_one(jsk, &session->skcb))
 			__j1939_sk_errqueue(session, &jsk->sk, type);
 	}
-	spin_unlock_bh(&priv->j1939_socks_lock);
+	read_unlock_bh(&priv->j1939_socks_lock);
 };
 
 void j1939_sk_send_loop_abort(struct sock *sk, int err)
@@ -1271,7 +1272,7 @@ void j1939_sk_netdev_event_netdown(struct j1939_priv *priv)
 	struct j1939_sock *jsk;
 	int error_code = ENETDOWN;
 
-	spin_lock_bh(&priv->j1939_socks_lock);
+	read_lock_bh(&priv->j1939_socks_lock);
 	list_for_each_entry(jsk, &priv->j1939_socks, list) {
 		jsk->sk.sk_err = error_code;
 		if (!sock_flag(&jsk->sk, SOCK_DEAD))
@@ -1279,7 +1280,7 @@ void j1939_sk_netdev_event_netdown(struct j1939_priv *priv)
 
 		j1939_sk_queue_drop_all(priv, jsk, error_code);
 	}
-	spin_unlock_bh(&priv->j1939_socks_lock);
+	read_unlock_bh(&priv->j1939_socks_lock);
 }
 
 static int j1939_sk_no_ioctlcmd(struct socket *sock, unsigned int cmd,
-- 
2.34.1

